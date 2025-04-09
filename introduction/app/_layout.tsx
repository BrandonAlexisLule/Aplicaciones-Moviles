//archivo de configuración

import { Stack } from "expo-router";
import { Platform } from "react-native";

export default function RootLayout() {
  return <Stack
      screenOptions={{
        headerShown: true,
        headerBlurEffect: 'dark',
        headerTransparent: Platform.select({
          ios: true,
          web: true,
          android: false
        }),
        headerTintColor: Platform.select({
          ios: 'white',
          web: 'white',
          android: '#000'
        })
      }}>
    


    <Stack.Screen name="index"
      options={{
        headerLeft: () => <></>,
        headerShown: true,
        title: 'Gradientes'
      }}
    /> 


    <Stack.Screen name="+not-found"
      options={{
          title: '404 not found'
      }}
    /> 

  </Stack>;
}
