import AuthProvider from "@/providers/AuthProviders";
import { Stack } from "expo-router";

export default function RootLayout() {
  return (
    <AuthProvider>
      <Stack>
        <Stack.Screen
          name="index"
          options={{
            headerShown: false
          }}/>

          {/**Pantalla para presionar cualquier alimento para visualizar los detalles*/}
          <Stack.Screen
              name='home'
              options={{
                  title: 'home',
                  headerStyle:{
                      backgroundColor: '#414833'
                  },
                  headerTintColor: '#fff', //color del ícono regresar
                  headerBackButtonDisplayMode: 'generic', 
                  headerBackTitle: 'Atrás'
              }}/>
          <Stack.Screen
              name='registro'
              options={{
                  title: '',
                  headerShown: false
              }}/>

      </Stack>
    </AuthProvider>
  )
}
