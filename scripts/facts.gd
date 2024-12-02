extends VBoxContainer

@onready var landmark_fact: Label = $LandmarkFact

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if GameManager.landmarks_visited.back():
		if GameManager.landmarks_visited.back() == 'hub':
			landmark_fact.text = "Connect with your fellow students through many group activities found on the HUB website."
		elif GameManager.landmarks_visited.back() == 'creamery':
			landmark_fact.text = "For six days a year, industry pros flock to Penn State from around the world to learn how to craft ice cream perfection."
		elif GameManager.landmarks_visited.back() == 'bjc':
			landmark_fact.text = "The arena opened in 1996 and is the largest such venue between Philadelphia and Pittsburgh."
		elif GameManager.landmarks_visited.back() == 'beaver_stadium':
			landmark_fact.text = "Beaver Stadium has an official seating capacity of 106,572, making it currently the second largest stadium in the Western Hemisphere and the fourth largest in the world."
		elif GameManager.landmarks_visited.back() == 'lion_shrine':
			landmark_fact.text = " The Nittany Lion Shrine at the University Park campus is recognized as one of the most photographed landmarks in the entire state."
		elif GameManager.landmarks_visited.back() == 'patee_library':
			landmark_fact.text = "Today, there are 14 libraries at the University Park campus alone, while boasting an enormous collection of over 5.4 million volumes."
