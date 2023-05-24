namespace RequestPermission;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal,
    sap.common.CodeList
}
from '@sap/cds/common';

annotate RequestStatus
{
    name;
    descr;
}

entity Student
{
    key ID : UUID
        @Core.Computed;
    name : String(100) not null;
    class : Integer not null;
    phone : String(12);
    email : String(100);
    age : Integer;
    request : Association to many Request on request.student = $self;
}

entity Request
{
    key ID : UUID
        @Core.Computed;
    app_name : String(100);
    reason : String(500);
    student : Association to one Student;
    requestStatus : Association to one RequestStatus;
    teachers : Association to one Teachers;
}

entity Teachers
{
    key ID : UUID
        @Core.Computed;
    name : String(30) not null;
    class : Integer;
    phone : String(12);
    email : String(100);
    request : Association to many Request on request.teachers = $self;
}

entity RequestStatus : CodeList
{
    key status : String enum
    {
        Approved = 'A';
        Declined = 'D';
        Sent = 'S';
    } default 'S';
    criticality : Integer;
}

