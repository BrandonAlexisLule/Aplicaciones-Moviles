import { Link } from "expo-router";
import { TouchableOpacity, Text, StyleSheet } from "react-native";
import {LinearGradient} from 'expo-linear-gradient'

interface GradientItemProps {
    colors: [string, string] | [string, string, string] ,
    gradientName: string
}

export default function GradientItem({
    colors,
    gradientName
}:GradientItemProps) {
    return (
        <Link href={{
            pathname:'/gradient-details',

            //Le pasamos los parámetros: colores y gradientName
            params: {colors, gradientName}
        }} asChild>
            <TouchableOpacity style={estilos.contenedor}>
                <LinearGradient colors={colors} style={estilos.gradient}>
                    <Text style={estilos.text}>{gradientName}</Text>
                </LinearGradient>

            </TouchableOpacity>   
        </Link>    
    )
}

const estilos = StyleSheet.create({
    contenedor: {
        flex: 1,   
    },
    gradient: {
        width: '100%',
        height: 200
    },
    text:{
        color: 'white',
        fontWeight: 'bold',
        textAlign: 'center',
        fontSize: 25,
        marginBottom: 30
    },

})