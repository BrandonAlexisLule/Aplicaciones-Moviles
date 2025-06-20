import { supabase } from '@/lib/supabase'
import { Session } from '@supabase/supabase-js'
import { router } from 'expo-router'
import { createContext, useContext, useEffect, useState } from 'react'

type AuthData = {
    loading: boolean
    session: Session | null
}

const AuthContext = createContext<AuthData>({
    loading: true,
    session: null
})

interface Props {
    children: React.ReactNode
}

export default function AuthProvider (props: Props){
    const [loading, setLoading] = useState<boolean>(true)
    const [session, setSession] = useState<Session | null>(null)
    
    useEffect(() => {
        async function fetchSession() {
            const { error, data } = await supabase.auth.getSession()

        if(error) {
            throw error
        }

        if (data.session){
            setSession(data.session)
        } else {
            router.replace('/home')
        }
 
        setLoading(false)
        }

        fetchSession()

        const { data:authEscuchador } = supabase.auth.onAuthStateChange(async (_, session) => {
            setSession(session)
            setLoading(false)

            if(session) {
                router.replace('/')
            } else {
                router.replace('/')
            }
        }) 

        return () => {
            authEscuchador?.subscription.unsubscribe
        }   
    }, [])

    return (
        <AuthContext.Provider value={{loading, session}}>
            {props.children}
        </AuthContext.Provider>
    )
}   
    
export const useAuth = () => useContext(AuthContext)
    
