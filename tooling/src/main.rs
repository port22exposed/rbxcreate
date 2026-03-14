mod types;

use std::fs;

use xxhash_rust::xxh3::xxh3_128;

const API_DUMP_URL: &str =
    "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json";

fn main() {
    println!("fetching API dump...");

    let mut response = ureq::get(API_DUMP_URL)
        .call()
        .expect("failed to fetch API dump");

    let api_dump: types::ApiDump = response
        .body_mut()
        .read_json()
        .expect("failed to parse API dump");

    println!("API dump parsed");

    let creatable: Vec<&str> = api_dump
        .classes
        .iter()
        .filter(|class| {
            !class
                .tags
                .as_ref()
                .is_some_and(|tags| tags.iter().any(|t| t == "NotCreatable"))
        })
        .map(|class| class.name.as_str())
        .collect();

    println!("creatable instance list collected from API dump");

    let hash_path = "../creatable-instance-hash";

    let joined = creatable.join(",");

    let new_hash = format!("{:x}", xxh3_128(joined.as_bytes()));

    let previous_hash = fs::read_to_string(&hash_path).unwrap_or_default();

    if previous_hash.trim() == new_hash {
        println!("no new creatable instances found, not continuing");
        return;
    }

    println!("hash mismatch, new create.luau generating and updating the hash file");

    fs::write(&hash_path, &new_hash).expect("failed to write creatable-instance-hash");

    let lookup_table_type = {
        let lines: Vec<String> = creatable
            .iter()
            .map(|name| format!("    {}: {}", name, name))
            .collect();
        format!("type Lookup = {{\n{}\n}}", lines.join(",\n"))
    };

    let class_names_union_type = {
        let quoted: Vec<String> = creatable.iter().map(|n| format!("\"{}\"", n)).collect();
        format!("type ClassNames = {}", quoted.join(" | "))
    };

    let base_create =
        fs::read_to_string("../create.luau.in").expect("failed to read create.luau.in");

    let license = fs::read_to_string("../LICENSE").expect("failed to read LICENSE");

    let license_indented = license.trim_end().replace('\n', "\n\t");
    let license_block = format!("--[[\n\t{}\n]]\n", license_indented);

    let output = base_create
        .replace("--LOOKUP_TABLE_TYPE", &lookup_table_type)
        .replace("--CLASS_NAMES_UNION_TYPE", &class_names_union_type)
        .replace("--!nocheck\n", "")
        .replace("--LICENSE", &license_block);

    fs::write("../create.luau", &output).expect("failed to write create.luau");

    println!(
        "wrote create.luau ({} creatable classes, hash: {})",
        creatable.len(),
        new_hash
    );
}
