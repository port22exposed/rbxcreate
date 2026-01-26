--[[
	MIT License
	
	Copyright (c) 2026 port22exposed
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
]]

type Lookup = {
    AccessoryDescription: AccessoryDescription,
    Accoutrement: Accoutrement,
    Accessory: Accessory,
    Hat: Hat,
    AdPortal: AdPortal,
    AdvancedDragger: AdvancedDragger,
    Animation: Animation,
    AnimationGraphDefinition: AnimationGraphDefinition,
    CurveAnimation: CurveAnimation,
    KeyframeSequence: KeyframeSequence,
    AnimationController: AnimationController,
    AnimationNodeDefinition: AnimationNodeDefinition,
    AnimationRigData: AnimationRigData,
    Animator: Animator,
    Annotation: Annotation,
    WorkspaceAnnotation: WorkspaceAnnotation,
    Atmosphere: Atmosphere,
    Attachment: Attachment,
    Bone: Bone,
    AudioAnalyzer: AudioAnalyzer,
    AudioChannelMixer: AudioChannelMixer,
    AudioChannelSplitter: AudioChannelSplitter,
    AudioChorus: AudioChorus,
    AudioCompressor: AudioCompressor,
    AudioDeviceInput: AudioDeviceInput,
    AudioDeviceOutput: AudioDeviceOutput,
    AudioDistortion: AudioDistortion,
    AudioEcho: AudioEcho,
    AudioEmitter: AudioEmitter,
    AudioEqualizer: AudioEqualizer,
    AudioFader: AudioFader,
    AudioFilter: AudioFilter,
    AudioFlanger: AudioFlanger,
    AudioGate: AudioGate,
    AudioLimiter: AudioLimiter,
    AudioListener: AudioListener,
    AudioPitchShifter: AudioPitchShifter,
    AudioPlayer: AudioPlayer,
    AudioRecorder: AudioRecorder,
    AudioReverb: AudioReverb,
    AudioSearchParams: AudioSearchParams,
    AudioSpeechToText: AudioSpeechToText,
    AudioTextToSpeech: AudioTextToSpeech,
    AudioTremolo: AudioTremolo,
    AvatarAccessoryRules: AvatarAccessoryRules,
    AvatarAnimationRules: AvatarAnimationRules,
    AvatarBodyRules: AvatarBodyRules,
    AvatarClothingRules: AvatarClothingRules,
    AvatarCollisionRules: AvatarCollisionRules,
    AvatarRules: AvatarRules,
    Backpack: Backpack,
    RemoteEvent: RemoteEvent,
    UnreliableRemoteEvent: UnreliableRemoteEvent,
    WrapDeformer: WrapDeformer,
    WrapLayer: WrapLayer,
    WrapTarget: WrapTarget,
    Beam: Beam,
    BindableEvent: BindableEvent,
    BindableFunction: BindableFunction,
    BodyAngularVelocity: BodyAngularVelocity,
    BodyForce: BodyForce,
    BodyGyro: BodyGyro,
    BodyPosition: BodyPosition,
    BodyThrust: BodyThrust,
    BodyVelocity: BodyVelocity,
    RocketPropulsion: RocketPropulsion,
    BodyPartDescription: BodyPartDescription,
    Breakpoint: Breakpoint,
    BodyColors: BodyColors,
    CharacterMesh: CharacterMesh,
    Pants: Pants,
    Shirt: Shirt,
    ShirtGraphic: ShirtGraphic,
    Skin: Skin,
    ClickDetector: ClickDetector,
    DragDetector: DragDetector,
    Clouds: Clouds,
    CompositeValueCurve: CompositeValueCurve,
    Configuration: Configuration,
    AlignOrientation: AlignOrientation,
    AlignPosition: AlignPosition,
    AngularVelocity: AngularVelocity,
    AnimationConstraint: AnimationConstraint,
    BallSocketConstraint: BallSocketConstraint,
    HingeConstraint: HingeConstraint,
    LineForce: LineForce,
    LinearVelocity: LinearVelocity,
    PlaneConstraint: PlaneConstraint,
    Plane: Plane,
    RigidConstraint: RigidConstraint,
    RodConstraint: RodConstraint,
    RopeConstraint: RopeConstraint,
    CylindricalConstraint: CylindricalConstraint,
    PrismaticConstraint: PrismaticConstraint,
    SpringConstraint: SpringConstraint,
    Torque: Torque,
    TorsionSpringConstraint: TorsionSpringConstraint,
    UniversalConstraint: UniversalConstraint,
    VectorForce: VectorForce,
    HumanoidController: HumanoidController,
    SkateboardController: SkateboardController,
    VehicleController: VehicleController,
    AirController: AirController,
    ClimbController: ClimbController,
    GroundController: GroundController,
    SwimController: SwimController,
    ControllerManager: ControllerManager,
    CustomEvent: CustomEvent,
    CustomEventReceiver: CustomEventReceiver,
    CustomLog: CustomLog,
    BlockMesh: BlockMesh,
    CylinderMesh: CylinderMesh,
    FileMesh: FileMesh,
    SpecialMesh: SpecialMesh,
    DataStoreGetOptions: DataStoreGetOptions,
    DataStoreIncrementOptions: DataStoreIncrementOptions,
    DataStoreOptions: DataStoreOptions,
    DataStoreSetOptions: DataStoreSetOptions,
    DebuggerWatch: DebuggerWatch,
    Dialog: Dialog,
    DialogChoice: DialogChoice,
    Dragger: Dragger,
    EulerRotationCurve: EulerRotationCurve,
    ExperienceInviteOptions: ExperienceInviteOptions,
    ExplorerFilter: ExplorerFilter,
    Explosion: Explosion,
    FaceControls: FaceControls,
    Decal: Decal,
    Texture: Texture,
    Hole: Hole,
    MotorFeature: MotorFeature,
    Fire: Fire,
    FloatCurve: FloatCurve,
    FlyweightService: FlyweightService,
    CSGDictionaryService: CSGDictionaryService,
    NonReplicatedCSGDictionaryService: NonReplicatedCSGDictionaryService,
    Folder: Folder,
    ForceField: ForceField,
    FunctionalTest: FunctionalTest,
    GetTextBoundsParams: GetTextBoundsParams,
    CanvasGroup: CanvasGroup,
    Frame: Frame,
    ImageButton: ImageButton,
    TextButton: TextButton,
    ImageLabel: ImageLabel,
    TextLabel: TextLabel,
    RelativeGui: RelativeGui,
    ScrollingFrame: ScrollingFrame,
    TextBox: TextBox,
    VideoDisplay: VideoDisplay,
    VideoFrame: VideoFrame,
    ViewportFrame: ViewportFrame,
    BillboardGui: BillboardGui,
    ScreenGui: ScreenGui,
    GuiMain: GuiMain,
    AdGui: AdGui,
    SurfaceGui: SurfaceGui,
    FloorWire: FloorWire,
    SelectionBox: SelectionBox,
    BoxHandleAdornment: BoxHandleAdornment,
    ConeHandleAdornment: ConeHandleAdornment,
    CylinderHandleAdornment: CylinderHandleAdornment,
    ImageHandleAdornment: ImageHandleAdornment,
    LineHandleAdornment: LineHandleAdornment,
    PyramidHandleAdornment: PyramidHandleAdornment,
    SphereHandleAdornment: SphereHandleAdornment,
    WireframeHandleAdornment: WireframeHandleAdornment,
    ParabolaAdornment: ParabolaAdornment,
    SelectionSphere: SelectionSphere,
    ArcHandles: ArcHandles,
    Handles: Handles,
    SurfaceSelection: SurfaceSelection,
    SelectionPartLasso: SelectionPartLasso,
    SelectionPointLasso: SelectionPointLasso,
    Path2D: Path2D,
    HandRigDescription: HandRigDescription,
    HapticEffect: HapticEffect,
    HeightmapImporterService: HeightmapImporterService,
    HiddenSurfaceRemovalAsset: HiddenSurfaceRemovalAsset,
    Highlight: Highlight,
    Humanoid: Humanoid,
    HumanoidDescription: HumanoidDescription,
    HumanoidRigDescription: HumanoidRigDescription,
    IKControl: IKControl,
    InputAction: InputAction,
    InputBinding: InputBinding,
    InputContext: InputContext,
    RotateP: RotateP,
    RotateV: RotateV,
    Glue: Glue,
    ManualGlue: ManualGlue,
    ManualWeld: ManualWeld,
    Motor: Motor,
    Motor6D: Motor6D,
    Rotate: Rotate,
    Snap: Snap,
    VelocityMotor: VelocityMotor,
    Weld: Weld,
    Keyframe: Keyframe,
    KeyframeMarker: KeyframeMarker,
    PointLight: PointLight,
    SpotLight: SpotLight,
    SurfaceLight: SurfaceLight,
    LocalizationTable: LocalizationTable,
    Script: Script,
    LocalScript: LocalScript,
    ModuleScript: ModuleScript,
    MakeupDescription: MakeupDescription,
    MarkerCurve: MarkerCurve,
    MaterialVariant: MaterialVariant,
    MemoryStoreService: MemoryStoreService,
    Message: Message,
    Hint: Hint,
    NoCollisionConstraint: NoCollisionConstraint,
    Noise: Noise,
    OperationGraph: OperationGraph,
    CornerWedgePart: CornerWedgePart,
    Part: Part,
    FlagStand: FlagStand,
    Seat: Seat,
    SkateboardPlatform: SkateboardPlatform,
    SpawnLocation: SpawnLocation,
    WedgePart: WedgePart,
    MeshPart: MeshPart,
    PartOperation: PartOperation,
    IntersectOperation: IntersectOperation,
    NegateOperation: NegateOperation,
    UnionOperation: UnionOperation,
    TrussPart: TrussPart,
    VehicleSeat: VehicleSeat,
    Camera: Camera,
    Model: Model,
    Actor: Actor,
    HopperBin: HopperBin,
    Tool: Tool,
    Flag: Flag,
    WorldModel: WorldModel,
    PartOperationAsset: PartOperationAsset,
    ParticleEmitter: ParticleEmitter,
    PathfindingLink: PathfindingLink,
    PathfindingModifier: PathfindingModifier,
    Player: Player,
    PluginAction: PluginAction,
    PluginCapabilities: PluginCapabilities,
    NumberPose: NumberPose,
    Pose: Pose,
    BloomEffect: BloomEffect,
    BlurEffect: BlurEffect,
    ColorCorrectionEffect: ColorCorrectionEffect,
    ColorGradingEffect: ColorGradingEffect,
    DepthOfFieldEffect: DepthOfFieldEffect,
    SunRaysEffect: SunRaysEffect,
    ProximityPrompt: ProximityPrompt,
    ProximityPromptService: ProximityPromptService,
    RTAnimationTracker: RTAnimationTracker,
    ReflectionMetadata: ReflectionMetadata,
    ReflectionMetadataCallbacks: ReflectionMetadataCallbacks,
    ReflectionMetadataClasses: ReflectionMetadataClasses,
    ReflectionMetadataEnums: ReflectionMetadataEnums,
    ReflectionMetadataEvents: ReflectionMetadataEvents,
    ReflectionMetadataFunctions: ReflectionMetadataFunctions,
    ReflectionMetadataClass: ReflectionMetadataClass,
    ReflectionMetadataEnum: ReflectionMetadataEnum,
    ReflectionMetadataEnumItem: ReflectionMetadataEnumItem,
    ReflectionMetadataMember: ReflectionMetadataMember,
    ReflectionMetadataProperties: ReflectionMetadataProperties,
    ReflectionMetadataYieldFunctions: ReflectionMetadataYieldFunctions,
    RemoteFunction: RemoteFunction,
    RenderingTest: RenderingTest,
    RotationCurve: RotationCurve,
    AtmosphereSensor: AtmosphereSensor,
    BuoyancySensor: BuoyancySensor,
    ControllerPartSensor: ControllerPartSensor,
    FluidForceSensor: FluidForceSensor,
    Sky: Sky,
    Smoke: Smoke,
    Sound: Sound,
    ChorusSoundEffect: ChorusSoundEffect,
    CompressorSoundEffect: CompressorSoundEffect,
    DistortionSoundEffect: DistortionSoundEffect,
    EchoSoundEffect: EchoSoundEffect,
    EqualizerSoundEffect: EqualizerSoundEffect,
    FlangeSoundEffect: FlangeSoundEffect,
    PitchShiftSoundEffect: PitchShiftSoundEffect,
    ReverbSoundEffect: ReverbSoundEffect,
    TremoloSoundEffect: TremoloSoundEffect,
    SoundGroup: SoundGroup,
    Sparkles: Sparkles,
    StandalonePluginScripts: StandalonePluginScripts,
    StarterGear: StarterGear,
    StudioAttachment: StudioAttachment,
    StudioCallout: StudioCallout,
    StyleRule: StyleRule,
    StyleSheet: StyleSheet,
    StyleDerive: StyleDerive,
    StyleLink: StyleLink,
    StyleQuery: StyleQuery,
    SurfaceAppearance: SurfaceAppearance,
    Team: Team,
    TeleportOptions: TeleportOptions,
    TerrainDetail: TerrainDetail,
    TerrainRegion: TerrainRegion,
    TestService: TestService,
    TextChannel: TextChannel,
    TextChatCommand: TextChatCommand,
    TextChatMessageProperties: TextChatMessageProperties,
    BubbleChatMessageProperties: BubbleChatMessageProperties,
    TextGenerator: TextGenerator,
    TrackerStreamAnimation: TrackerStreamAnimation,
    Trail: Trail,
    Tween: Tween,
    UIAspectRatioConstraint: UIAspectRatioConstraint,
    UISizeConstraint: UISizeConstraint,
    UITextSizeConstraint: UITextSizeConstraint,
    UICorner: UICorner,
    UIDragDetector: UIDragDetector,
    UIFlexItem: UIFlexItem,
    UIGradient: UIGradient,
    UIGridLayout: UIGridLayout,
    UIListLayout: UIListLayout,
    UIPageLayout: UIPageLayout,
    UITableLayout: UITableLayout,
    UIPadding: UIPadding,
    UIScale: UIScale,
    UIStroke: UIStroke,
    BinaryStringValue: BinaryStringValue,
    BoolValue: BoolValue,
    BrickColorValue: BrickColorValue,
    CFrameValue: CFrameValue,
    Color3Value: Color3Value,
    DoubleConstrainedValue: DoubleConstrainedValue,
    IntConstrainedValue: IntConstrainedValue,
    IntValue: IntValue,
    NumberValue: NumberValue,
    ObjectValue: ObjectValue,
    RayValue: RayValue,
    StringValue: StringValue,
    Vector3Value: Vector3Value,
    ValueCurve: ValueCurve,
    Vector3Curve: Vector3Curve,
    VideoDeviceInput: VideoDeviceInput,
    VideoPlayer: VideoPlayer,
    VirtualInputManager: VirtualInputManager,
    VisualizationMode: VisualizationMode,
    VisualizationModeCategory: VisualizationModeCategory,
    WeldConstraint: WeldConstraint,
    Wire: Wire,
    WrapTextureTransfer: WrapTextureTransfer
}

type ClassNames = "AccessoryDescription" | "Accoutrement" | "Accessory" | "Hat" | "AdPortal" | "AdvancedDragger" | "Animation" | "AnimationGraphDefinition" | "CurveAnimation" | "KeyframeSequence" | "AnimationController" | "AnimationNodeDefinition" | "AnimationRigData" | "Animator" | "Annotation" | "WorkspaceAnnotation" | "Atmosphere" | "Attachment" | "Bone" | "AudioAnalyzer" | "AudioChannelMixer" | "AudioChannelSplitter" | "AudioChorus" | "AudioCompressor" | "AudioDeviceInput" | "AudioDeviceOutput" | "AudioDistortion" | "AudioEcho" | "AudioEmitter" | "AudioEqualizer" | "AudioFader" | "AudioFilter" | "AudioFlanger" | "AudioGate" | "AudioLimiter" | "AudioListener" | "AudioPitchShifter" | "AudioPlayer" | "AudioRecorder" | "AudioReverb" | "AudioSearchParams" | "AudioSpeechToText" | "AudioTextToSpeech" | "AudioTremolo" | "AvatarAccessoryRules" | "AvatarAnimationRules" | "AvatarBodyRules" | "AvatarClothingRules" | "AvatarCollisionRules" | "AvatarRules" | "Backpack" | "RemoteEvent" | "UnreliableRemoteEvent" | "WrapDeformer" | "WrapLayer" | "WrapTarget" | "Beam" | "BindableEvent" | "BindableFunction" | "BodyAngularVelocity" | "BodyForce" | "BodyGyro" | "BodyPosition" | "BodyThrust" | "BodyVelocity" | "RocketPropulsion" | "BodyPartDescription" | "Breakpoint" | "BodyColors" | "CharacterMesh" | "Pants" | "Shirt" | "ShirtGraphic" | "Skin" | "ClickDetector" | "DragDetector" | "Clouds" | "CompositeValueCurve" | "Configuration" | "AlignOrientation" | "AlignPosition" | "AngularVelocity" | "AnimationConstraint" | "BallSocketConstraint" | "HingeConstraint" | "LineForce" | "LinearVelocity" | "PlaneConstraint" | "Plane" | "RigidConstraint" | "RodConstraint" | "RopeConstraint" | "CylindricalConstraint" | "PrismaticConstraint" | "SpringConstraint" | "Torque" | "TorsionSpringConstraint" | "UniversalConstraint" | "VectorForce" | "HumanoidController" | "SkateboardController" | "VehicleController" | "AirController" | "ClimbController" | "GroundController" | "SwimController" | "ControllerManager" | "CustomEvent" | "CustomEventReceiver" | "CustomLog" | "BlockMesh" | "CylinderMesh" | "FileMesh" | "SpecialMesh" | "DataStoreGetOptions" | "DataStoreIncrementOptions" | "DataStoreOptions" | "DataStoreSetOptions" | "DebuggerWatch" | "Dialog" | "DialogChoice" | "Dragger" | "EulerRotationCurve" | "ExperienceInviteOptions" | "ExplorerFilter" | "Explosion" | "FaceControls" | "Decal" | "Texture" | "Hole" | "MotorFeature" | "Fire" | "FloatCurve" | "FlyweightService" | "CSGDictionaryService" | "NonReplicatedCSGDictionaryService" | "Folder" | "ForceField" | "FunctionalTest" | "GetTextBoundsParams" | "CanvasGroup" | "Frame" | "ImageButton" | "TextButton" | "ImageLabel" | "TextLabel" | "RelativeGui" | "ScrollingFrame" | "TextBox" | "VideoDisplay" | "VideoFrame" | "ViewportFrame" | "BillboardGui" | "ScreenGui" | "GuiMain" | "AdGui" | "SurfaceGui" | "FloorWire" | "SelectionBox" | "BoxHandleAdornment" | "ConeHandleAdornment" | "CylinderHandleAdornment" | "ImageHandleAdornment" | "LineHandleAdornment" | "PyramidHandleAdornment" | "SphereHandleAdornment" | "WireframeHandleAdornment" | "ParabolaAdornment" | "SelectionSphere" | "ArcHandles" | "Handles" | "SurfaceSelection" | "SelectionPartLasso" | "SelectionPointLasso" | "Path2D" | "HandRigDescription" | "HapticEffect" | "HeightmapImporterService" | "HiddenSurfaceRemovalAsset" | "Highlight" | "Humanoid" | "HumanoidDescription" | "HumanoidRigDescription" | "IKControl" | "InputAction" | "InputBinding" | "InputContext" | "RotateP" | "RotateV" | "Glue" | "ManualGlue" | "ManualWeld" | "Motor" | "Motor6D" | "Rotate" | "Snap" | "VelocityMotor" | "Weld" | "Keyframe" | "KeyframeMarker" | "PointLight" | "SpotLight" | "SurfaceLight" | "LocalizationTable" | "Script" | "LocalScript" | "ModuleScript" | "MakeupDescription" | "MarkerCurve" | "MaterialVariant" | "MemoryStoreService" | "Message" | "Hint" | "NoCollisionConstraint" | "Noise" | "OperationGraph" | "CornerWedgePart" | "Part" | "FlagStand" | "Seat" | "SkateboardPlatform" | "SpawnLocation" | "WedgePart" | "MeshPart" | "PartOperation" | "IntersectOperation" | "NegateOperation" | "UnionOperation" | "TrussPart" | "VehicleSeat" | "Camera" | "Model" | "Actor" | "HopperBin" | "Tool" | "Flag" | "WorldModel" | "PartOperationAsset" | "ParticleEmitter" | "PathfindingLink" | "PathfindingModifier" | "Player" | "PluginAction" | "PluginCapabilities" | "NumberPose" | "Pose" | "BloomEffect" | "BlurEffect" | "ColorCorrectionEffect" | "ColorGradingEffect" | "DepthOfFieldEffect" | "SunRaysEffect" | "ProximityPrompt" | "ProximityPromptService" | "RTAnimationTracker" | "ReflectionMetadata" | "ReflectionMetadataCallbacks" | "ReflectionMetadataClasses" | "ReflectionMetadataEnums" | "ReflectionMetadataEvents" | "ReflectionMetadataFunctions" | "ReflectionMetadataClass" | "ReflectionMetadataEnum" | "ReflectionMetadataEnumItem" | "ReflectionMetadataMember" | "ReflectionMetadataProperties" | "ReflectionMetadataYieldFunctions" | "RemoteFunction" | "RenderingTest" | "RotationCurve" | "AtmosphereSensor" | "BuoyancySensor" | "ControllerPartSensor" | "FluidForceSensor" | "Sky" | "Smoke" | "Sound" | "ChorusSoundEffect" | "CompressorSoundEffect" | "DistortionSoundEffect" | "EchoSoundEffect" | "EqualizerSoundEffect" | "FlangeSoundEffect" | "PitchShiftSoundEffect" | "ReverbSoundEffect" | "TremoloSoundEffect" | "SoundGroup" | "Sparkles" | "StandalonePluginScripts" | "StarterGear" | "StudioAttachment" | "StudioCallout" | "StyleRule" | "StyleSheet" | "StyleDerive" | "StyleLink" | "StyleQuery" | "SurfaceAppearance" | "Team" | "TeleportOptions" | "TerrainDetail" | "TerrainRegion" | "TestService" | "TextChannel" | "TextChatCommand" | "TextChatMessageProperties" | "BubbleChatMessageProperties" | "TextGenerator" | "TrackerStreamAnimation" | "Trail" | "Tween" | "UIAspectRatioConstraint" | "UISizeConstraint" | "UITextSizeConstraint" | "UICorner" | "UIDragDetector" | "UIFlexItem" | "UIGradient" | "UIGridLayout" | "UIListLayout" | "UIPageLayout" | "UITableLayout" | "UIPadding" | "UIScale" | "UIStroke" | "BinaryStringValue" | "BoolValue" | "BrickColorValue" | "CFrameValue" | "Color3Value" | "DoubleConstrainedValue" | "IntConstrainedValue" | "IntValue" | "NumberValue" | "ObjectValue" | "RayValue" | "StringValue" | "Vector3Value" | "ValueCurve" | "Vector3Curve" | "VideoDeviceInput" | "VideoPlayer" | "VirtualInputManager" | "VisualizationMode" | "VisualizationModeCategory" | "WeldConstraint" | "Wire" | "WrapTextureTransfer"

type function Properties(instance: type?)
	local properties = types.newtable()

	while instance do
		for i, v in instance:properties() do
			local connector = v.read and v.read.tag == "table" and v.read:readproperty(types.singleton("Connect"))
			if connector then
				if not connector then
					continue
				end
				local params = connector:parameters().head
				if not params then
					continue
				end
				local listener = params[2]
				if not listener then
					continue
				end
				properties:setproperty(i, types.optional(listener))
			elseif v.write then
				properties:setproperty(
					i,
					types.optional(types.unionof(v.write, types.newfunction({}, { head = { v.write } })))
				)
			end
		end

		instance = instance:readparent()
	end

	properties:setindexer(types.number, types.any)

	return properties
end

return function<T>(className: T & ClassNames, defaultParent: Instance?)
	type class = index<Lookup, T>
	return function(properties: Properties<class>)
		local parent = defaultParent or nil
		local instance = Instance.new(className)

		for name, value in pairs(properties) do
			if typeof(name) ~= "string" then
				continue
			end

			if name == "Parent" then
				parent = value
			elseif name == "Children" and typeof(value) == "table" then
				for _, child in value do
					if typeof(child) == "Instance" then
						child.Parent = instance
					end
				end
			else
				if typeof(instance[name]) == "RBXScriptSignal" then
					instance[name]:Connect(value)
				else
					instance[name] = value
				end
			end
		end

		instance.Parent = parent :: Instance?

		return instance :: class
	end
end
