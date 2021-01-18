namespace mymta;

type Address {
    street : String(100);
    city   : String(100);
    zip    : String(10);
}

entity Customers {
    key id      : Integer;
        cusname : String(200);
        address : Address;
}

entity Users {
    key id       : Integer;
        dnumber  : String(7);
        fname    : String(100);
        lname    : String(100);
        bookings : Association to many Bookings
                       on bookings.user = $self;
}

entity Bookings {
    key id   : Integer;
        date : Date;
        user : Association to Users;
        customer : Association to Customers;

}
