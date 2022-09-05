import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PpeKitComponent } from './ppe-kit.component';

describe('PpeKitComponent', () => {
  let component: PpeKitComponent;
  let fixture: ComponentFixture<PpeKitComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PpeKitComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PpeKitComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
