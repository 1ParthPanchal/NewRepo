import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import * as firebase from '../../../node_modules/firebase/compat';
import '../../../node_modules/firebase/compat/firestore'
import '../../../node_modules/firebase/auth';
import '../../../node_modules/firebase/firestore';
import { LoginserviceService } from '../services/loginservice.service';
import { FirebaseadminService } from '../services/firebaseadmin.service';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})

export class HeaderComponent implements OnInit {
 
  searchedKeyword:string | undefined;
  pincode:any;
  //otp: string | undefined; showOtpComponent = true; 
  @ViewChild("ngOtpInput", { static: false }) ngOtpInput: any; config = { allowNumbersOnly: true, length: 4, isPasswordInput: false, disableAutoFocus: false, placeholder: "*", inputStyles: { width: "50px", height: "50px", }, }; 
  confirmationResult: any;
  recaptchaVerifier!: firebase.default.auth.RecaptchaVerifier;
  allUsers: any;
  // ,private firebase:FirebaseadminService
  constructor(private service: LoginserviceService,private routes:Router ){}
  ngOnInit(){
   window.recaptchaVerifier = new firebase.default.auth.RecaptchaVerifier('sign-in-button');
    console.log(window.recaptchaVerifier);
  //  this. getUsers();
  }
  // Mobilenumber:number|undefined;
  msg: string | undefined;
  otpSent: boolean = false
  // phoneNumber = null
  otp = null
  phoneNumber:string='';
 
    check(phoneNumber:string)
    {
      let output = this.service.checkmobilenumber(phoneNumber);
      if(output == true)
      {
        this.routes.navigate(['body']);
      }
      else{
        this.msg = "invalid Username and Password";
      }
    }
    //firebase admin get
    // getUsers() {
    //   this.allUsers =  this.service.getAllUsers();
    //   console.log(this.allUsers);
    //  }
  
  // OTP Code onOtpChange(otp) { this.otp = otp; // When all 4 digits are filled, trigger OTP validation method if (otp.length == 4) { this.validateOtp(); } } setVal(val) { this.ngOtpInput.setValue(val); } onConfigChange() { this.showOtpComponent = false; this.otp = null; setTimeout(() => { this.showOtpComponent = true; }, 0); } validateOtp() { // write your logic here to validate it, you can integrate sms API here if you want } 
  sendOtp() {
debugger
    firebase.default.auth().signInWithPhoneNumber(`+91` + this.phoneNumber, window.recaptchaVerifier).then((confirmationResult) => {
    
    // SMS sent. Prompt user to type the code from the message, then sign the
   //confirmationResult.confirm(code)
    
    window.confirmationResult = confirmationResult;
    console.log(confirmationResult);
    this.otpSent = true;
    alert("user loged in succesfull")

  //  this.recaptchaVerifier.render().then(function(widgetId) {
    
  //   });

    }).catch((err: any) => {
    
    console.log(err)
    
    })

    }
    
  // recaptchaVerifier(arg0: number, arg1: number, recaptchaVerifier: any) {
  //   throw new Error('Method not implemented.');
  // }


    signIn() {
debugger
      window.confirmationResult.confirm(this.otp).then((user: any)=>{
        
      alert("Sucessfully registerd");
      console.log(user)
      this.routes.navigate(['../categories']);
      })
      
      }
  
 
  

}
function code(code: any) {
  throw new Error('Function not implemented.');
}
declare global {
  interface Window {
    confirmationResult: any;
    recaptchaVerifier:any;
  }
}

function getUserByPhoneNumber(phoneNumber: any) {
  throw new Error('Function not implemented.');
}

