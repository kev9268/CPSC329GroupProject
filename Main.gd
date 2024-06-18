extends Node
var scenario_chosen
var scenario
var index = 0
var button_theme = StyleBoxFlat.new()
var style = Theme.new()
var text_style = Theme.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	
	button_theme.set_border_blend(true)
	button_theme.border_width_bottom=40
	button_theme.border_width_top=40
	button_theme.border_width_left=40
	button_theme.border_width_right=40
	button_theme.set_border_color (Color(0.05,0.14,0.4)) 
	button_theme.set_bg_color(Color(0.98,0.98,0.98))

	style.set_stylebox("normal","Button",button_theme)
	style.set_stylebox("hover","Button",button_theme)
	style.set_stylebox("pressed","Button",button_theme)
	style.set_color("font_color", "Button", Color(1, 0, 0))
	style.set_color("font_pressed_color", "Button", Color(1, 0, 0))
	style.set_color("font_hover_color", "Button", Color(1, 0, 0))
	style.default_font_size = 30
	

		
		
func loadStage(current_stage):
	var stage =  scenario[current_stage]
	var call = Callable(self,"_on_option_pressed")
	for i in range(0,stage.num_of_buttons):
		var button= Button.new()
		#button.add_theme_stylebox_override("normal", button_theme)
		#button.add_theme_stylebox_override("hover", button_theme)
		#button.add_theme_font_override("normal")
		button.set_theme(style)
		#button.add_theme_color_override("hover",Color(1, 0, 0))
		if i == 0:
			#button.text = stage.button1
			button.set_meta("leads_to",stage.button1_leads_to)
		elif i ==1:
			#button.text = stage.button2
			button.set_meta("leads_to",stage.button2_leads_to)
		elif i ==2:
			#button.text = stage.button3
			button.set_meta("leads_to",stage.button3_leads_to)
		elif i==3:
			#button.text = stage.button4
			button.set_meta("leads_to",stage.button4_leads_to)
		button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		$GameScreen/HBoxContainer.add_child(button)
		button.connect("pressed",call.bind(button.get_path()))
	for n in range(0,stage.num_of_buttons):
		var label = Label.new()
		$GameScreen/LabelContainer.add_child(label)
		label.custom_minimum_size = Vector2(373,278)
		label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		label.size_flags_vertical = Control.SIZE_EXPAND_FILL
		
		label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
		label.autowrap_mode =TextServer.AUTOWRAP_WORD_SMART
		if n == 0:
			label.text = stage.button1
			#button.set_meta("leads_to",stage.button1_leads_to)
		elif n ==1:
			label.text = stage.button2
			#button.set_meta("leads_to",stage.button2_leads_to)
		elif n ==2:
			label.text = stage.button3
			#button.set_meta("leads_to",stage.button3_leads_to)
		elif n==3:
			label.text = stage.button4
			#button.set_meta("leads_to",stage.button4_leads_to)

		#label.add_theme_font_size_override("normal",30)
		label.add_theme_color_override("font_color",Color(1, 0, 0))
		
		#label.top_level = true
	
	$GameScreen/VBoxContainer/RichTextLabel.text = stage.stage_text
	$GameScreen/VBoxContainer/MenuButton.get_popup().clear()
	if stage.info_text != null :
		$GameScreen/VBoxContainer/MenuButton.show()
		$GameScreen/VBoxContainer/MenuButton.get_popup().add_item(stage.info_text)
		$GameScreen/VBoxContainer/MenuButton.show_popup()
	else:
		$GameScreen/VBoxContainer/MenuButton.hide()
	if stage.screen_picture != null :
		$GameScreen/VBoxContainer/TextureRect.texture = load(stage.screen_picture)
		#$GameScreen/VBoxContainer/TextureRect.set_expand_mode("TextureRect.EXPAND_IGNORE_SIZE")
	

## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_option_pressed(button:String):
	index = get_node(button).get_meta("leads_to")
	for child in $GameScreen/HBoxContainer.get_children():
		child.queue_free()
	for child in $GameScreen/LabelContainer.get_children():
		child.queue_free()
	print(index)
	if index>=0:
		loadStage(index)
	else:
		print("game over gg")
		$GameScreen.hide()
		$Credits.show()
		#$Screen/TextEdit.text = "game over gg"
		


func _on_start_button_pressed():
	$StartMenu/Start.hide() 
	$StartMenu/LevelSelect.show()


func _on_credits_button_pressed():
	$StartMenu.hide()
	$Credits.show()


func _on_social_eng_pressed():
	scenario = SocialScenario.test_scenario
	$StartMenu.hide()
	$GameScreen.show()
	loadStage(0)


func _on_malware_pressed():
	
	scenario = MalwareScenario.test_scenario
	$StartMenu.hide()
	$GameScreen.show()
	loadStage(0)

func _on_phishing_pressed():
	scenario = PhishingScenario.test_scenario
	$StartMenu.hide()
	$GameScreen.show()
	loadStage(0)
	
func _on_return_pressed():
	$Credits.hide()
	$StartMenu.show()


func _on_close_pressed():
	get_tree().quit()
