import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LoginserviceService {
  getAllUsers(): any {
    throw new Error('Method not implemented.');
  }
checkmobilenumber(mnumber:string)
{
  if(mnumber == '6355367556')
  {
    localStorage.setItem('userMobileNumber','userMobileNumber');
    return true;
  }
  else{
    return false;
  }
}
  constructor() { }
}
