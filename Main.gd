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
	var call = Callable(self,"_on_option_pressed")
	for i in range(0,stage.num_of_buttons):
		var button = Button.new()
		if i == 0:
			button.text = stage.button1
			button.set_meta("leads_to",stage.button1_leads_to)
		elif i ==1:
			button.text = stage.button2
			button.set_meta("leads_to",stage.button2_leads_to)
		elif i ==2:
			button.text = stage.button3
			button.set_meta("leads_to",stage.button3_leads_to)
		elif i==3:
			button.text = stage.button4
			button.set_meta("leads_to",stage.button4_leads_to)
		
		button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		$HBoxContainer.add_child(button)
		button.connect("pressed",call.bind(button.get_path()))

	$Screen/TextEdit.text = stage.stage_text
	#$Screen/TextureRect.texture = load(stage.screen_picture)
	$MenuButton.get_popup().clear()
	$MenuButton.get_popup().add_item(stage.info_text)	
	

## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_option_pressed(button:String):
	
	index = get_node(button).get_meta("leads_to")
	for child in $HBoxContainer.get_children():
		child.queue_free()
	print(index)
	if index>=0:
		loadStage(index)
	else:
		print("game over gg")
		$HBoxContainer.hide()
		#$Option1.hide()
		#$Option2.hide()
		#$Option3.hide()
		$MenuButton.hide()
		$Screen/TextEdit.text = "game over gg"
