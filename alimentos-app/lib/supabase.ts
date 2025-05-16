import AsyncStorage from "@react-native-async-storage/async-storage";
import { createClient } from '@supabase/supabase-js';

const url = 'https://aleosazhfqofavmioqyg.supabase.co'
const key = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFsZW9zYXpoZnFvZmF2bWlvcXlnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDU5NjYxNzAsImV4cCI6MjA2MTU0MjE3MH0.hRMGg9ivWSyPTrlsX98yl0zKGXvgulhQN_lBcZku7NY'

export const supabase = createClient(url, key, {
    auth: {
        storage: AsyncStorage,
        autoRefreshToken: true,
        persistSession: true,
        detectSessionInUrl: false
    }
})