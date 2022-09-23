import { Component, OnInit } from '@angular/core';
import { Ilogin } from '../Models/login';
import { Route, Router } from '@angular/router';
import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { NgForm } from '@angular/forms';
import { IToken } from '../Models/authenticatedResponse';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
invalidLogin:boolean | undefined;
credentials:Ilogin = {userName:'',password:''};
  constructor(private router:Router,private http:HttpClient) { }

  ngOnInit(): void {
  }
  login = (form:NgForm)=>{
    if(form.valid){
      debugger
      this.http.post<IToken>("https://localhost:44328/api/Login/PostLogin",this.credentials,{
        headers:new HttpHeaders({"Content-Type":"application/json"})
      })
      .subscribe({
        next:(response:IToken)=>{
          const token = response.token;
          localStorage.setItem("jwt",token);
          this.invalidLogin=false;
          this.router.navigate(["/"]);
        },
        error:(err:HttpErrorResponse)=>this.invalidLogin =true
      })
    }
  }

}
