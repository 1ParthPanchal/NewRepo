import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LoginauthGuard implements CanActivate {
  routes: any;
  canActivate(
    _route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
      if(localStorage.getItem('userMobileNumber')!=null)
      {
        this.routes.navigate(['/header']);
        return true;
      }
      else{
        //this.routes.navigate(['./header']);
        return false;
      }
  }
  
}
