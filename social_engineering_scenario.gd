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
var stage_3 = StageProperty.stage_property.new()
var stage_4 = StageProperty.stage_property.new()
var stage_5 = StageProperty.stage_property.new()
var stage_6 = StageProperty.stage_property.new()

var test_scenario = [stage_0,stage_1,stage_2, stage_3, stage_4, stage_5, stage_6]


# Called when the node enters the scene tree for the first time.
func _ready():
	stage_0.num_of_buttons = 2
	stage_0.stage_text = "You receive a text on Instagram from a close friend who you haven’t been in touch with for over a year. The friend greets you normally. Do you reply?"
	stage_0.button1 = "Yes" 
	stage_0.button2 = "No" 
	stage_0.button1_leads_to = 1 
	stage_0.button2_leads_to = 2 
	#stage_0.screen_picture = "res://art/[picturename].jpg"
	#stage_0.info_text = "hello this is the tip for stage 0"
	
	stage_1.num_of_buttons = 3
	stage_1.stage_text = "Now the friend asks you for some money. Over text, the friend explains his situation and he seems to be in desperate need for some money. You can afford it, so do you lend your friend some money?"
	stage_1.button1 = "Yes"
    stage_1.button2 = "No" 
    stage_1.button3 = "Investigate further"
	stage_1.button1_leads_to = 3
    stage_1.button2_leads_to = 2
    stage_1.button3_leads_to = 4
	#stage_1.button3_leads_to = -1
	#stage_1.screen_picture = "temp"
	#stage_1.info_text = "hello this is the tip for stage 1"
	
	stage_2.num_of_buttons = 2
	stage_2.stage_text = "You are very cautious. Although this might be a personal preference, there is no cybersecurity threat to you yet. You can go back and choose to reply."
	stage_2.button1 = "Go back"
	stage_2.button2 = "End game" 
	stage_2.button1_leads_to = 1
	stage_2.button2_leads_to = 6 #stage 6
	#stage_1.screen_picture = "temp"
    stage_2.info_text = "hello this is the tip for stage 2"
    
    stage_3.num_of_buttons = 2
	stage_3.stage_text = "You have been SCAMMED! That person has hacked your friend’s account and is pretending to be him. You lost your money!"
    stage_3.button1 = "End game"
    stage_3.button2 = "Start over"
    stage_3.button1_leads_to = -1 #stage 8 ?
    stage_3.button2_leads_to = 0 #start screen
	#stage_3.screen_picture = "temp"
    #stage_3.info_text = "hello this is the tip for stage 2"
    
    stage_4.num_of_buttons = 2
	stage_4.stage_text = "There seems to be something off. Your friend only wants to talk via chat and not on a voice call. This is not usually how your friend is. He tries to emotionally express his dire need to money but is not willing to prove his identity. What do you do? Do you send him the money?"
	stage_4.button1 = "Yes"
	stage_4.button2 = "No"  
	stage_4.button1_leads_to = 3
	stage_4.button2_leads_to = 5
	#stage_4.screen_picture = "temp"
	#stage_4.info_text = "hello this is the tip for stage 2"

    stage_5.num_of_buttons = 2
	stage_5.stage_text = "Good job! It was indeed a SCAM! You have gathered enough evidence to be cautious of this, and not falling for the apparent scam is the right choice. If your friend is truly in need, there might be other ways to confirm his identity and reach out to him separately for confirmation."
	stage_5.button1 = "End game"
	stage_5.button2 = "Start over"
	stage_5.button1_leads_to = -1
	stage_5.button2_leads_to = 0
	#stage_5.screen_picture = "temp"
	#stage_5.info_text = "hello this is the tip for stage 2"

    stage_6.num_of_buttons = 2
	stage_6.stage_text = "It was a SCAM! But you did not gather enough evidence to know for sure if this was a scam. It could have been a genuine text from your friend. Although you were very safe, you did manage to escape the scam."
	stage_6.button1 = "End game"
	stage_6.button2 = "Start over"
	stage_6.button1_leads_to = -1
	stage_6.button2_leads_to = 0
	#stage_5.screen_picture = "temp"
	#stage_5.info_text = "hello this is the tip for stage 2"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass