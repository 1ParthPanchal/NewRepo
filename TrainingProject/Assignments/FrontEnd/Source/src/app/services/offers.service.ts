import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { HttpClient } from '@angular/common/http';
// import { HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';
@Injectable({
  providedIn: 'root'
})
export class OffersService {

  constructor(private http : HttpClient) { }
  private _baseUrl = environment.baseUrl+"Offers";

  GetOffers():Observable<any>{
    return this.http.get(`${this._baseUrl}/GetOffers`)
  }
}
