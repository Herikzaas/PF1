extends AudioStreamPlayer2D

#var level_music = $"/root/Global".musica_fase

func _play_music(music : AudioStream, volume = -16.8) :
	if stream == music :
		return
	
	stream = music
	volume_db = volume
	stream.loop = true
	play()

func play_music_level():
	var musica = $"/root/Global".musica_fase
	_play_music(musica)
	
