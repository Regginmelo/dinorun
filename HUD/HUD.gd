extends CanvasLayer


var score = 0
var highscore = 0
var is_playing
func update_score_label():
	score = score + 10
	$Scorelabel.text = "score: %d"%(score)
	
func update_highscore_label():
	if score > highscore:
		highscore = score
		$HighScoreLabel.text = "High Score: %d"%(highscore)


func _on_timer_timeout():
	update_score_label


func _on_button_pressed():
	
	$Timer.start()
	$Button.visible=false
