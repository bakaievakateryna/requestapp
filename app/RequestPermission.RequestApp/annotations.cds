using RequestPermissionService as service from '../../srv/service';

annotate service.Request with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Application name',
            Value : app_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Reason',
            Value : reason,
        },
        {
            $Type : 'UI.DataField',
            Value : teachers.name,
            Label : 'Approver',
        },
        {
            $Type : 'UI.DataField',
            Value : requestStatus.name,
            Criticality : requestStatus.criticality,
            Label : 'Status',
        },
    ]
);
annotate service.Request with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'app_name',
                Value : app_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'reason',
                Value : reason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'teacher_name',
                Value : teacher_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
