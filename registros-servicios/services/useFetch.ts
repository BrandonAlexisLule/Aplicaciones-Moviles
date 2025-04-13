import { useEffect, useState } from "react"

const useFetch = <T>(fetchFunction: () => Promise<T>, autoFetch = true) => {
    const [data, setData] = useState<null | T>()

    const [loading, setLoading] = useState(false)

    const [error, setError] = useState<Error | null>(null)

    const fetchData = async () => {
        try {
            setLoading(true)
            setError(null)

            const respuesta = await fetchFunction()
            setData(respuesta)

        } catch (error) {
            setError(error instanceof Error ? error: new Error('An error occurred'))

        } finally {
            setLoading(false)

        }
    }

    const reset = ( ) => {
        setData(null)
        setLoading(false)
        setError(null)

    }




    useEffect(()=> {
        if( autoFetch ) {
            fetchData()
        }


    }, []) //solamente se va a ejecutar una sola vez en la app, si no hay nada en [], si hay algo, se va a renderizar varias veces

    return {
        data,
        loading,
        error,
        refetch: fetchData,
        reset
    }
}

export default useFetch