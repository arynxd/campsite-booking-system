import { NgModule } from '@angular/core'
import { BrowserModule } from '@angular/platform-browser'

import { AppRoutingModule } from './app-routing.module'
import { AppComponent } from './app.component'
import { HomeComponent } from './home/home.component'
import { UsersComponent } from './users/users.component'
import { BookingsComponent } from './bookings/bookings.component'
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'

@NgModule({
	declarations: [
		AppComponent,
		HomeComponent,
		UsersComponent,
		BookingsComponent,
	],
	imports: [BrowserModule, AppRoutingModule, BrowserAnimationsModule],
	bootstrap: [AppComponent],
})
export class AppModule {}
