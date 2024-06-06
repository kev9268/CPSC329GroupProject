extends Node
var scenario_chosen = 1
var scenario
var index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if scenario_chosen == 1:
		scenario = TestScenario.test_scenario
	loadStage(index)
	
		
func loadStage(current_stage):
	var stage =  scenario[current_stage]
	$Option1.text = stage.button1
	$Option2.text = stage.button2
	$Option3.text = stage.button3
	$Option1.set_meta("leads_to",stage.button1_leads_to)
	$Option2.set_meta("leads_to",stage.button2_leads_to)
	$Option3.set_meta("leads_to",stage.button3_leads_to)
	$Screen/TextEdit.text = stage.stage_text
	#$Screen/TextureRect.texture = load(stage.screen_picture)
	$MenuButton.get_popup().clear()
	$MenuButton.get_popup().add_item(stage.info_text)	
	

## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_option_pressed(button:String):
	index = get_node(button).get_meta("leads_to")
	print(index)
	if index>=0:
		loadStage(index)
	else:
		print("game over gg")
		$Option1.hide()
		$Option2.hide()
		$Option3.hide()
		$MenuButton.hide()
		$Screen/TextEdit.text = "game over gg"
