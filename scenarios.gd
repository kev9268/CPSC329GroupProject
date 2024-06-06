extends Node
# Definitions:
# 	Stage: Segments of progression for the storyline of a scenario
#	Scenario: The main plot of a storyline Ex. Phishing, malware, social engineering

# How this works:
# The buttons of a stage will lead to another stage depending on how things can branch like a linked list (or it doesn't need to)
# Clicking a button will repopulate the properties of the current nodes with information based on the
# class. Each stage will contain a variety of different information therefore the construction of this class
# Each scenario will be an array that contains instances of the stage_property class. The index of 
# the scenario array will correspond to the properties of stage number. If the index the button leads to, it will
# bring the game the finish scene or the end of the story line

class stage_property:
	var stage_text: String #text of the current stage
	var button1: String #text for the first choice
	var button1_leads_to: int # Next stage that will be loaded after selecting option 1
	var button2: String #text for the second choice
	var button2_leads_to: int # Next stage that will be loaded after selecting option 2
	var button3: String #text for the third choice
	var button3_leads_to: int # Next stage that will be loaded after selecting option 3
	var screen_picture: String # Path to graphics that contain the prompt 
	var info_text # text for the tip/help drop button

# To make a scenario create a new script and name it according to the scenario. Each stage requires
# you to create a new stage property as shown in test_scenario. Then using the stage name you can call the 
# variables of the stage_property class and fill in the information. Once all the stages are completed create
# an array based off of the script name and populate the array with the stages in order starting fro mstage 0
# Once the scenario is compelted
