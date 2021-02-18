resource "aws_iam_user" "tim" {
   name = "tim"
   tags = {
createdby = "Yusufilik"
   }
        
}

resource "aws_iam_user" "multiuser" {
   name = each.key 
   for_each = toset ([  # set basiclly means list 
    "bob",
    "sam", 
    "lisa",
    ])
}
