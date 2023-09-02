importScripts('https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js');
firebase.initializeApp({apiKey: "AIzaSyDVvttz5QCoRWhERHj9dV8_22OCvEAJoXE",authDomain: "tea2go-f80b8.firebaseapp.com",projectId: "tea2go-f80b8",storageBucket: "tea2go-f80b8.appspot.com", messagingSenderId: "1059165022801", appId: "1:1059165022801:web:e3922085a09cb51c092670"});
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) { return self.registration.showNotification(payload.data.title, { body: payload.data.body ? payload.data.body : '', icon: payload.data.icon ? payload.data.icon : '' }); });
