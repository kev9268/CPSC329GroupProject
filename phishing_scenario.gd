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

var test_scenario = [stage_0, stage_1, stage_2, stage_3, stage_4, stage_5, stage_6]

# Called when the node enters the scene tree for the first time.
func _ready():
	stage_0.num_of_buttons = 2
	stage_0.stage_text = "You work at the office at Woogle and you forgot your mom’s birthday tomorrow. So you think to go to Amazon to order a gift for her after work today but during your lunch break you open your email and notice this email:"
	stage_0.button1 = "Press on Check Now" 
	stage_0.button2 = "Ignore the email"  
	stage_0.button1_leads_to = 1 
	stage_0.button2_leads_to = 2 
	stage_0.screen_picture = "res://art/phishing1.jpeg"
	#stage_0.info_text = "hello this is the tip for stage 0"
	
	stage_1.num_of_buttons = 2
	stage_1.stage_text = "You are brought to a website that looks just like any other amazon website but asks for your username, password, full name, billing address, phone number and credit card information."
	stage_1.button1 = "Fill in your information"
	stage_1.button2 = "Leave the website and go on with your day" 
	stage_1.button1_leads_to = 5
	stage_1.button2_leads_to = 2
	#stage_1.screen_picture = "temp"
	#stage_1.info_text = "hello this is the tip for stage 1"
	
	stage_2.num_of_buttons = 3
	stage_2.stage_text = "Nice you noticed that must’ve been a phishing scam but you start to get nervous because after a few hours you notice this email in your inbox."
	stage_2.button1 = "Press on the button to Verify Amazon Account"
	stage_2.button2 = "Go to amazon.ca and log into your Amazon account" 
	stage_2.button3 = "Ignore the email" 
	stage_2.button1_leads_to = 3 
	stage_2.button2_leads_to = 6
	stage_2.button3_leads_to = 6
	stage_2.screen_picture = "res://art/phishing2.jpg"
	#stage_2.info_text = "hello this is the tip for stage 2"
	
	stage_3.num_of_buttons = 3
	stage_3.stage_text = "You are now brought to a website address “amazonverifyaccounts.ca” that asks you to login into your amazon account. This looks exactly like how you would normally login to your account on amazon."
	stage_3.button1 = "Google the web address “amazonverifyaccounts.ca” to see if its from Amazon"
	stage_3.button2 = "Decide this seems too fishy and continue with your day" 
	stage_3.button3 = "Login to your account" 
	stage_3.button1_leads_to = -1 
	stage_3.button2_leads_to = -1
	stage_3.button3_leads_to = 6
	#stage_3.screen_picture = "temp"
	#stage_3.info_text = "hello this is the tip for stage 2"

	stage_4.num_of_buttons = 3
	stage_4.stage_text = "You logged into your account and then it brings you to a page that says “Thank you for logging in and your account has been verified”. You find that kind of weird and thankfully you took an introductory course on privacy and security in university so you start feeling like there is something fishy going on here."
	stage_4.button1 = "Contact Amazon to see if this was a phishing scam"
	stage_4.button2 = "Go to amazon.ca and change your password and credit cards" 
	stage_4.button3 = "Take no action because things have looked good so far" 
	stage_4.button1_leads_to = 6
	stage_4.button2_leads_to = 6
	stage_4.button3_leads_to = 5
	#stage_4.screen_picture = "temp"
	#stage_4.info_text = "hello this is the tip for stage 2"

	stage_5.num_of_buttons = 2
	stage_5.stage_text = "After finally finishing your work today, you get home and go to amazon.ca to login. You cannot login and you realized maybe your account has been compromised so you contact Amazon customer service but they are closed for the day. Your mom does not get her birthday gift :(."
	stage_5.button1 = "Go to credits/source"
	stage_5.button2 = "End Game"
	stage_5.button1_leads_to = -1
	stage_5.button2_leads_to = -1
	#stage_5.screen_picture = "temp"
	#stage_5.info_text = "hello this is the tip for stage 2"

	stage_6.num_of_buttons = 2
	stage_6.stage_text = "Nice! After finally finishing your work today, you get home and go to amazon.ca to login. You login just fine and realize you had just avoided some phishy business today and in a breath of relief you order your gift for your mom and she receives it the next day :)"
	stage_6.button1 = "Go to credits/source"
	stage_6.button2 = "End Game"
	stage_6.button1_leads_to = -1
	stage_6.button2_leads_to = -1
	#stage_6.screen_picture = "temp"
	#stage_6.info_text = "hello this is the tip for stage 2"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
