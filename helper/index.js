export const formatearCantidad = (cantidad) => {

    //Regresa un dato que lo convierte a una moneda
    return Number(cantidad).toLocaleString('es-MX', {
        style:'currency',
        currency:'MXN'
    })
}