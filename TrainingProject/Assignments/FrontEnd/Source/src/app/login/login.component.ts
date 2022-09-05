import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { LoginserviceService } from '../services/loginservice.service';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  constructor(private service: LoginserviceService,private routes:Router ){}
// Mobilenumber:number|undefined;
msg: string | undefined;



  ngOnInit(): void {
  }
  check(mnumber:string)
  {
    let output = this.service.checkmobilenumber(mnumber);
    if(output == true)
    {
      this.routes.navigate(['./catagories']);
    }
    else{
      this.msg = "invalid Username and Password";
    }
  }
  
}
