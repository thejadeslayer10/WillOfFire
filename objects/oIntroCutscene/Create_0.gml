depth = -10000;
state = "typing";
loop_count = 0;
timer = 0;

text_full = "I'm so cold...";
text_visible = "";
char_index = 0;
type_speed = 0.2; 
fade_white = 0;

audio_stop_all();
var _snd = asset_get_index("snd_intro_7sec");
if (_snd != -1) audio_play_sound(_snd, 10, false);