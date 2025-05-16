import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";

const firebaseConfig = {
  apiKey: "AIzaSyD2GISlgRsYoYPY47CtC2IwQDiLO-GXwdc",
  authDomain: "alimentos-f296c.firebaseapp.com",
  projectId: "alimentos-f296c",
  storageBucket: "alimentos-f296c.firebasestorage.app",
  messagingSenderId: "718525194215",
  appId: "1:718525194215:web:c59691e76e339bcb112742",
  measurementId: "G-Z37BXWZZF2"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
export default app