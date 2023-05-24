using { RequestPermission as my } from '../db/schema';

using RequestPermission from '../db/schema';

@path : 'service/RequestPermission'
service RequestPermissionService
{
    entity Student as
        projection on my.Student;

    @odata.draft.enabled
    entity Request as
        projection on my.Request;

    entity Teachers as
        projection on my.Teachers;

    entity RequestStatus as
        projection on my.RequestStatus;
}

annotate RequestPermissionService with @requires :
[
    'authenticated-user'
];
