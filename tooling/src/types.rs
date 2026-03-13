use serde::Deserialize;

#[derive(Deserialize)]
pub(crate) struct ApiDump {
    #[serde(rename = "Classes")]
    pub(crate) classes: Vec<ClassDef>,
}

#[derive(Deserialize)]
pub(crate) struct ClassDef {
    #[serde(rename = "Name")]
    pub(crate) name: String,
    #[serde(rename = "Tags", default)]
    pub(crate) tags: Option<Vec<String>>,
}
