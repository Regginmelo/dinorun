extends Timer

var score = 0
var highscore = 0

func update_score_label():
	score = score + 100
	$Scorelabel.text = "score: %d"%(score)
	
func update_highscore_label():
	if score > highscore
		highscore = score
		$HighScoreLabel.text = "High Score: %d"%(highscore)
	

