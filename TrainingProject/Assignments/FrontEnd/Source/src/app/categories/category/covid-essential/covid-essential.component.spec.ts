import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CovidEssentialComponent } from './covid-essential.component';

describe('CovidEssentialComponent', () => {
  let component: CovidEssentialComponent;
  let fixture: ComponentFixture<CovidEssentialComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CovidEssentialComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CovidEssentialComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
