extends CanvasLayer
signal start_game_btn

var score = 0
var highscore = 0
var is_playing = false
var mob_counter = 0

func update_score_label():
	score = score + 100
	$Scorelabel.text = "score: %d"%(score)
	
func update_highscore_label():
	if score > highscore:
		highscore = score
		$HighScoreLabel.text = "High Score: %d"%(highscore)
	is_playing = false
	$ScoreTmer.stop()
	$Button.visible = false
	

func _on_timer_timeout():
	update_score_label()


func _on_button_pressed():
	start_game_btn.emit()
	is_playing = true
	$ScoreTimer.start()
	$Button.visible=false
