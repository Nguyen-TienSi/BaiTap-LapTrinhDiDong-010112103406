package com.uth.xmlui

import android.graphics.Typeface
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val tvMessage = findViewById<TextView>(R.id.tvMessage)
        val btnSayHi = findViewById<Button>(R.id.btnSayHi)

        btnSayHi.setOnClickListener {
            tvMessage.text = "I’m\nNguyen Van A"
            tvMessage.textAlignment = View.TEXT_ALIGNMENT_CENTER
            tvMessage.setTypeface(null, Typeface.BOLD)
        }
    }
}
