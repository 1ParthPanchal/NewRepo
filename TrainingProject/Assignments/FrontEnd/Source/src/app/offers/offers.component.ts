import { Component, OnInit } from '@angular/core';
import { HttpErrorResponse } from '@angular/common/http';
import { OffersService } from '../services/offers.service';
import {IOffers} from '../model/offers';
@Component({
  selector: 'app-offers',
  templateUrl: './offers.component.html',
  styleUrls: ['./offers.component.css']
})
export class OffersComponent implements OnInit {

  constructor(private offer:OffersService) { }
  offers:IOffers[] = [];
  offersdetails : IOffers | undefined;

  ngOnInit(): void {
    this.GetOffers();
  }
  GetOffers(){
    this.offer.GetOffers().subscribe
   ((res:any)=>{console.log(res);
  this.offers = res.sort();
    console.log(this.offers[0].off_Discription);
    console.log(this.offers[1].off_Code);
  },
  (err:HttpErrorResponse)=>{
    console.log(err.message);
  }
  )
    }
}
