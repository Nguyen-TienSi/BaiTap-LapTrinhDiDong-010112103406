package com.uth.uicomponentslistscreen

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.uth.uicomponentslistscreen.screen.ColumnLayoutScreen
import com.uth.uicomponentslistscreen.screen.ImagesScreen
import com.uth.uicomponentslistscreen.screen.RowLayoutScreen
import com.uth.uicomponentslistscreen.screen.TextDetailScreen
import com.uth.uicomponentslistscreen.screen.TextFieldScreen
import com.uth.uicomponentslistscreen.screen.UIComponentsListScreen

@Composable
fun AppNavigator() {
    val navController = rememberNavController()

    NavHost(navController = navController, startDestination = "componentList") {
        composable("componentList") { UIComponentsListScreen(navController) }
        composable("textDetail") { TextDetailScreen(navController) }
        composable("textField") { TextFieldScreen(navController) }
        composable("images") { ImagesScreen(navController) }
        composable("rowLayout") { RowLayoutScreen(navController) }
        composable("columnLayout") { ColumnLayoutScreen(navController) }
    }
}
