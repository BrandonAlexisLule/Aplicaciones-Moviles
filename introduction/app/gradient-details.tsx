
import { LinearGradient } from "expo-linear-gradient";
import { Redirect, Stack, useLocalSearchParams } from "expo-router";
import { Platform, ScrollView, StyleSheet, TouchableOpacity, View, Text} from "react-native";
import { Ionicons } from '@expo/vector-icons'


export default function GradientDetailsScreen() {
                //instancia que va a recibir parámetros para mostrar en la página
    const params = useLocalSearchParams<{
        gradientName: string,
        colors: string
    }>();
    console.log(params.colors);
    console.log(params.gradientName);

    if(!params.colors || !params.gradientName) return <Redirect href={'/+not-found'}/>


  return (
    <>
        <Stack.Screen options={{
            title: params.gradientName
        }}/>
        <ScrollView contentContainerStyle={estilos.container}>
            <LinearGradient 
                colors={params.colors.split(',')}
                style={StyleSheet.absoluteFill}
                start={{x: 0.1, y: 0.3}}
            />

            <View
            style={{
                width: '100%',
                position: 'absolute',
                bottom: 40
            }}>

            <View style={{
                
                flexDirection: 'row',
                gap: 10,
                marginBottom: 20,
                alignSelf: 'center'

            }}>
                <Text style={{color: 'white'}}>{params.colors.replace(',', '-')}</Text>
                <Text style={{color: 'white'}}>{params.gradientName}</Text>

            </View>
            

                <View style={{       
                    marginBottom: 20,
                    gap: 10,
                    flexDirection: 'row',
                    justifyContent: 'space-evenly',
                }}>
                    <TouchableOpacity>
                        <Ionicons name="chevron-down-circle" size={40} color={'white'}/>
                    </TouchableOpacity>
                    <TouchableOpacity>
                        <Ionicons name="chevron-up-circle" size={40} color={'white'}/>
                    </TouchableOpacity>
                    <TouchableOpacity>
                        <Ionicons name="chevron-forward-circle" size={40} color={'white'}/>
                    </TouchableOpacity>
                    <TouchableOpacity>
                        <Ionicons name="chevron-back-circle" size={40} color={'white'}/>
                    </TouchableOpacity>
                </View>
            </View>
        </ScrollView>
    </>
  );
}

const estilos = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: Platform.OS === "ios" ? 100 : 0
  }, 
  texto: {
    fontSize: 30,
    fontWeight: 'bold',
    color: 'white'
  },

})
