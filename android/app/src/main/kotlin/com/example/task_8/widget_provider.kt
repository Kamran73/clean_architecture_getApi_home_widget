package com.example.task_8

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetPlugin

class HomeScreenWidgetProvider : AppWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
    ) {
        for (appWidgetId in appWidgetIds) {


            // Get reference to SharedPreferences
            val widgetData = HomeWidgetPlugin.getData(context)
            val views = RemoteViews(context.packageName, R.layout.widget_layout).apply {

                val userName = widgetData.getString("user_name", "No Data")
                setTextViewText(R.id.tvUserName, userName ?: "No Data")

//                val imageName = widgetData.getString("filename", null)
//                val imageFile = imageName?.let { File(it) }
//                val imageExists = imageFile?.exists()
//                if (imageExists == true) {
//                    val myBitmap: Bitmap = BitmapFactory.decodeFile(imageFile.absolutePath)
//                    setImageViewBitmap(R.id.widget_image, myBitmap)
//                } else {
//                    println("image not found!, looked @: $imageName")
//                }

            }
            val pendingIntent = HomeWidgetLaunchIntent.getActivity(
                context,
                MainActivity::class.java
            )
            views.setOnClickPendingIntent(R.id.widget_root, pendingIntent)
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}