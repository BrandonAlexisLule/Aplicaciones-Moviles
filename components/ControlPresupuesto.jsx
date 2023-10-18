import React, {useEffect, useState} from 'react'
import { Text, View, Image, StyleSheet } from 'react-native'
import globalStyles from '../styles'
import { formatearCantidad } from '../helper'


const ControlPresupuesto = ({presupuesto, gastos}) => 
{
    const [disponible, setDisponible] = useState(0)
    const [gastado, setGastado] = useState(0)

    useEffect(() => {
        {/**total va a sumar de lo gastado */}
        const totalGastado = gastos.reduce((total, gasto) => Number(gasto.cantidad) + total, 0)  
        const totalDisponible = presupuesto - totalGastado
        //console.log(totalDisponible)
        setGastado(totalGastado)
        setDisponible(totalDisponible)
    }, [])
    
    return (
    <View style={styles.contenedor}>
        <View style={styles.centrarGrafico}>
            {/**<Image style={styles.imagen} source={require('./assets/img/chart.png')}/> */}
        </View>
        <View>
            <Text>
                <Text>
                    <Text>Presupuesto: {formatearCantidad(presupuesto)}</Text>
                </Text>
                <Text>
                    <Text>Disponible: {formatearCantidad(disponible)}</Text>
                </Text>
                <Text>
                    <Text>Gastado: {formatearCantidad(gastado)}</Text>
                </Text>
            </Text>
        </View>
    </View>
  )
}

const styles = StyleSheet.create({
    //Se crea una copia de los estilos generados en el archivo aparte
    contenedor: {
        ...globalStyles.contenedor
    },
    centrarGrafico:{
        width: 300,
        height: 300
    },
    imagen:{
        alignItems: 'center'
    }
})

export default ControlPresupuesto