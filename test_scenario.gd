extends Node


#class stage_property:
	#var stage_text: String #text of the current scenario
	#var button1: String #text for the first choice
	#var button1_leads_to: int # Next stage that will be loaded after selecting option 1
	#var button2: String #text for the second choice
	#var button2_leads_to: int # Next stage that will be loaded after selecting option 2
	#var button3: String #text for the third choice
	#var button3_leads_to: int # Next stage that will be loaded after selecting option 3
	#var screen_picture: String # Path to graphics that contain the prompt 
	#var info_text # text for the tip/help drop button


var stage_0 = StageProperty.stage_property.new()
var stage_1 = StageProperty.stage_property.new()
var stage_2 = StageProperty.stage_property.new()

var test_scenario = [stage_0,stage_1,stage_2]

# Called when the node enters the scene tree for the first time.
func _ready():
	stage_0.num_of_buttons = 3
	stage_0.stage_text = "Hello this is stage 0"
	stage_0.button1 = "working 1" 
	stage_0.button2 = "working 2" 
	stage_0.button3 = "working 3" 
	stage_0.button1_leads_to = 1 
	stage_0.button2_leads_to = 1 
	stage_0.button3_leads_to = 1 
	#stage_0.screen_picture = "temp"
	stage_0.info_text = "hello this is the tip for stage 0"
	
	stage_1.num_of_buttons = 2
	stage_1.stage_text = "hello this is stage 1"
	stage_1.button1 = "working 4"
	stage_1.button2 = "working 5" 
	#stage_1.button3 = "working 6" 
	stage_1.button1_leads_to = 2
	stage_1.button2_leads_to = 2
	#stage_1.button3_leads_to = -1
	#stage_1.screen_picture = "temp"
	stage_1.info_text = "hello this is the tip for stage 1"
	
	stage_2.num_of_buttons = 4
	stage_2.stage_text = "hello this is stage 3"
	stage_2.button1 = "working 6"
	stage_2.button2 = "working 7" 
	stage_2.button3 = "working 8" 
	stage_2.button4 = "working 9" 
	stage_2.button1_leads_to = -1 
	stage_2.button2_leads_to = -1
	stage_2.button3_leads_to = -1
	stage_2.button4_leads_to = -1
	#stage_1.screen_picture = "temp"
	stage_2.info_text = "hello this is the tip for stage 2"
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
