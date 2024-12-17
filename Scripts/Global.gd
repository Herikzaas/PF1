extends Node

var perg_usadas = []
var perg_fase2 = []
var perg_visible = false
var liberar_paredeR
var liberar_paredeA 
var fase 
var certa = false 
var vidas = 3
var acertos = 0
var num_questoes 
var liberar_platR
var liberar_platA
var plataforma 
var fase_pre
var reinicia_fase


#func _process(delta: float) -> void:
	#if fase == 1 :
		#fase_pre = preload("res://Scenes/Fases/Fase2/Fase2.tscn")
	#if fase == 2 :
		#fase_pre = preload("res://Scenes/Fases/Fase3/fase_3.tscn")
