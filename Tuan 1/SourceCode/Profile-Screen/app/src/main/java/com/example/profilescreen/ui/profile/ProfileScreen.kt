package com.example.profilescreen.ui.profile

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ProfileScreen(
    userName: String,
    location: String,
    onBackClick: () -> Unit,
    onEditClick: () -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        ProfileHeader(
            onBackClick = onBackClick,
            onEditClick = onEditClick
        )

        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            ProfileAvatar()
            Spacer(modifier = Modifier.height(16.dp))
            ProfileInfo(userName = userName, location = location)
        }

        Spacer(modifier = Modifier.height(24.dp))
    }
}
