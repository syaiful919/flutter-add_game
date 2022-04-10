package com.example.add_game

import android.util.Log
import com.unity3d.player.UnityPlayerActivity

class MainUnityActivity: UnityPlayerActivity() {
    private val tag = "UNITY_PLAYER_ACTIVITY"

    fun onPreloadGame(message: String){
        Log.i(tag, "/// [MainUnityActivity] Message from unity: $message");
    }
}