using {mymta} from '../db/schema';

service BookingService {

    entity Users as select from mymta.Users;
    entity Bookings as select from mymta.Bookings;
    entity Customers as select from mymta.Customers;

}
