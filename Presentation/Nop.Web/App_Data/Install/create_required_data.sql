﻿SET IDENTITY_INSERT [dbo].[Store] ON
INSERT [dbo].[Store] ([Id], [Name], [Url], [SslEnabled], [SecureUrl], [Hosts], [DefaultLanguageId], [DisplayOrder], [CompanyName], [CompanyAddress], [CompanyPhoneNumber], [CompanyVat]) VALUES (1, N'Your store name', N'http://www.yourstore.com/', 0, NULL, N'yourstore.com,www.yourstore.com', 0, 1, N'Your company name', N'your company country, state, zip, street, etc', N'(123) 456-78901', NULL)
SET IDENTITY_INSERT [dbo].[Store] OFF
GO




SET IDENTITY_INSERT [dbo].[MessageTemplate] ON
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (1, N'Blog.BlogComment', NULL, N'%Store.Name%. New blog comment.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new blog comment has been created for blog post "%BlogComment.BlogPostTitle%".</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (2, N'Customer.BackInStock', NULL, N'%Store.Name%. Back in stock notification', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%, <br />Product <a target="_blank" href="%BackInStockSubscription.ProductUrl%">%BackInStockSubscription.ProductName%</a> is in stock.</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (3, N'Customer.EmailValidationMessage', NULL, N'%Store.Name%. Email validation', N'<a href="%Store.URL%">%Store.Name%</a>  <br />  <br />  To activate your account <a href="%Customer.AccountActivationURL%">click here</a>.     <br />  <br />  %Store.Name%', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (4, N'Customer.NewPM', NULL, N'%Store.Name%. You have received a new private message', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />You have received a new private message.</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (5, N'Customer.PasswordRecovery', NULL, N'%Store.Name%. Password recovery', N'<a href="%Store.URL%">%Store.Name%</a>  <br />  <br />  To change your password <a href="%Customer.PasswordRecoveryURL%">click here</a>.     <br />  <br />  %Store.Name%', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (6, N'Customer.WelcomeMessage', NULL, N'Welcome to %Store.Name%', N'We welcome you to <a href="%Store.URL%"> %Store.Name%</a>.<br /><br />You can now take part in the various services we have to offer you. Some of these services include:<br /><br />Permanent Cart - Any products added to your online cart remain there until you remove them, or check them out.<br />Address Book - We can now deliver your products to another address other than yours! This is perfect to send birthday gifts direct to the birthday-person themselves.<br />Order History - View your history of purchases that you have made with us.<br />Products Reviews - Share your opinions on products with our other customers.<br /><br />For help with any of our online services, please email the store-owner: <a href="mailto:%Store.Email%">%Store.Email%</a>.<br /><br />Note: This email address was provided on our registration page. If you own the email and did not register on our site, please send an email to <a href="mailto:%Store.Email%">%Store.Email%</a>.', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (7, N'Forums.NewForumPost', NULL, N'%Store.Name%. New Post Notification.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new post has been created in the topic <a href="%Forums.TopicURL%">"%Forums.TopicName%"</a> at <a href="%Forums.ForumURL%">"%Forums.ForumName%"</a> forum.<br /><br />Click <a href="%Forums.TopicURL%">here</a> for more info.<br /><br />Post author: %Forums.PostAuthor%<br />Post body: %Forums.PostBody%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (8, N'Forums.NewForumTopic', NULL, N'%Store.Name%. New Topic Notification.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new topic <a href="%Forums.TopicURL%">"%Forums.TopicName%"</a> has been created at <a href="%Forums.ForumURL%">"%Forums.ForumName%"</a> forum.<br /><br />Click <a href="%Forums.TopicURL%">here</a> for more info.</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (9, N'GiftCard.Notification', NULL, N'%GiftCard.SenderName% has sent you a gift card for %Store.Name%', N'<p>You have received a gift card for %Store.Name%</p><p>Dear %GiftCard.RecipientName%, <br /><br />%GiftCard.SenderName% (%GiftCard.SenderEmail%) has sent you a %GiftCard.Amount% gift cart for <a href="%Store.URL%"> %Store.Name%</a></p><p>You gift card code is %GiftCard.CouponCode%</p><p>%GiftCard.Message%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (10, N'NewCustomer.Notification', NULL, N'%Store.Name%. New customer registration', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new customer registered with your store. Below are the customer''s details:<br />Full name: %Customer.FullName%<br />Email: %Customer.Email%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (11, N'NewReturnRequest.StoreOwnerNotification', NULL, N'%Store.Name%. New return request.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% has just submitted a new return request. Details are below:<br />Request ID: %ReturnRequest.ID%<br />Product: %ReturnRequest.Product.Quantity% x Product: %ReturnRequest.Product.Name%<br />Reason for return: %ReturnRequest.Reason%<br />Requested action: %ReturnRequest.RequestedAction%<br />Customer comments:<br />%ReturnRequest.CustomerComment%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (12, N'News.NewsComment', NULL, N'%Store.Name%. New news comment.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new news comment has been created for news "%NewsComment.NewsTitle%".</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (13, N'NewsLetterSubscription.ActivationMessage', NULL, N'%Store.Name%. Subscription activation message.', N'<p><a href="%NewsLetterSubscription.ActivationUrl%">Click here to confirm your subscription to our list.</a></p><p>If you received this email by mistake, simply delete it.</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (14, N'NewsLetterSubscription.DeactivationMessage', NULL, N'%Store.Name%. Subscription deactivation message.', N'<p><a href="%NewsLetterSubscription.DeactivationUrl%">Click here to unsubscribe from our newsletter.</a></p><p>If you received this email by mistake, simply delete it.</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (15, N'NewVATSubmitted.StoreOwnerNotification', NULL, N'%Store.Name%. New VAT number is submitted.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just submitted a new VAT number. Details are below:<br />VAT number: %Customer.VatNumber%<br />VAT number status: %Customer.VatNumberStatus%<br />Received name: %VatValidationResult.Name%<br />Received address: %VatValidationResult.Address%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (16, N'OrderCancelled.CustomerNotification', NULL, N'%Store.Name%. Your order cancelled', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Your order has been cancelled. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (17, N'OrderCompleted.CustomerNotification', NULL, N'%Store.Name%. Your order completed', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Your order has been completed. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (18, N'ShipmentDelivered.CustomerNotification', NULL, N'Your order from %Store.Name% has been delivered.', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /> <br /> Hello %Order.CustomerFullName%, <br /> Good news! You order has been delivered. <br /> Order Number: %Order.OrderNumber%<br /> Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br /> Date Ordered: %Order.CreatedOn%<br /> <br /> <br /> <br /> Billing Address<br /> %Order.BillingFirstName% %Order.BillingLastName%<br /> %Order.BillingAddress1%<br /> %Order.BillingCity% %Order.BillingZipPostalCode%<br /> %Order.BillingStateProvince% %Order.BillingCountry%<br /> <br /> <br /> <br /> Shipping Address<br /> %Order.ShippingFirstName% %Order.ShippingLastName%<br /> %Order.ShippingAddress1%<br /> %Order.ShippingCity% %Order.ShippingZipPostalCode%<br /> %Order.ShippingStateProvince% %Order.ShippingCountry%<br /> <br /> Shipping Method: %Order.ShippingMethod% <br /> <br /> Delivered Products: <br /> <br /> %Shipment.Product(s)%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (19, N'OrderPlaced.CustomerNotification', NULL, N'Order receipt from %Store.Name%.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (20, N'OrderPlaced.StoreOwnerNotification', NULL, N'%Store.Name%. Purchase Receipt for Order #%Order.OrderNumber%', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Order.CustomerFullName% (%Order.CustomerEmail%) has just placed an order from your store. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (21, N'ShipmentSent.CustomerNotification', NULL, N'Your order from %Store.Name% has been shipped.', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%!, <br />Good news! You order has been shipped. <br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod% <br /> <br /> Shipped Products: <br /> <br /> %Shipment.Product(s)%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (22, N'Product.ProductReview', NULL, N'%Store.Name%. New product review.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new product review has been written for product "%ProductReview.ProductName%".</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (23, N'QuantityBelow.StoreOwnerNotification', NULL, N'%Store.Name%. Quantity below notification. %Product.Name%', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Product.Name% (ID: %Product.ID%) low quantity. <br /><br />Quantity: %Product.StockQuantity%<br /></p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (24, N'QuantityBelow.AttributeCombination.StoreOwnerNotification', NULL, N'%Store.Name%. Quantity below notification. %Product.Name%', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Product.Name% (ID: %Product.ID%) low quantity. <br />%AttributeCombination.Formatted%<br />Quantity: %AttributeCombination.StockQuantity%<br /></p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (25, N'ReturnRequestStatusChanged.CustomerNotification', NULL, N'%Store.Name%. Return request status was changed.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%,<br />Your return request #%ReturnRequest.ID% status has been changed.</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (26, N'Service.EmailAFriend', NULL, N'%Store.Name%. Referred Item', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />%EmailAFriend.Email% was shopping on %Store.Name% and wanted to share the following item with you. <br /><br /><b><a target="_blank" href="%Product.ProductURLForCustomer%">%Product.Name%</a></b> <br />%Product.ShortDescription% <br /><br />For more info click <a target="_blank" href="%Product.ProductURLForCustomer%">here</a> <br /><br /><br />%EmailAFriend.PersonalMessage%<br /><br />%Store.Name%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (27, N'Wishlist.EmailAFriend', NULL, N'%Store.Name%. Wishlist', N'<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />%Wishlist.Email% was shopping on %Store.Name% and wanted to share a wishlist with you. <br /><br /><br />For more info click <a target="_blank" href="%Wishlist.URLForCustomer%">here</a> <br /><br /><br />%Wishlist.PersonalMessage%<br /><br />%Store.Name%</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (28, N'Customer.NewOrderNote', NULL, N'%Store.Name%. New order note has been added', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%, <br />New order note has been added to your account:<br />"%Order.NewNoteText%".<br /><a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a></p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (29, N'RecurringPaymentCancelled.StoreOwnerNotification', NULL, N'%Store.Name%. Recurring payment cancelled', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just cancelled a recurring payment ID=%RecurringPayment.ID%.</p>', 1, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (30, N'OrderPlaced.VendorNotification', NULL, N'%Store.Name%. Order placed', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just placed an order. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (31, N'OrderRefunded.CustomerNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% refunded', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Order #%Order.OrderNumber% has been has been refunded. Please allow 7-14 days for the refund to be reflected in your account.<br /><br />Amount refunded: %Order.AmountRefunded%<br /><br />Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (32, N'OrderRefunded.StoreOwnerNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% refunded', N'%Store.Name%. Order #%Order.OrderNumber% refunded'', N''<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just refunded<br /><br />Amount refunded: %Order.AmountRefunded%<br /><br />Date Ordered: %Order.CreatedOn%</p>', 0, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (33, N'OrderPaid.StoreOwnerNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% paid', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just paid<br />Date Ordered: %Order.CreatedOn%</p>', 0, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (34, N'OrderPaid.CustomerNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% paid', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Order #%Order.OrderNumber% has been just paid. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (35, N'OrderPaid.VendorNotification', NULL, N'%Store.Name%. Order #%Order.OrderNumber% paid', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just paid. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0)
INSERT [dbo].[MessageTemplate] ([Id], [Name], [BccEmailAddresses], [Subject], [Body], [IsActive], [AttachedDownloadId], [EmailAccountId], [LimitedToStores]) VALUES (36, N'VendorAccountApply.StoreOwnerNotification', NULL, N'%Store.Name%. New vendor account submitted.', N'<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just submitted for a vendor account. Details are below:<br />Vendor name: %Vendor.Name%<br />Vendor email: %Vendor.Email%<br /><br />You can activate it in admin area.</p>', 1, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[MessageTemplate] OFF
GO


SET IDENTITY_INSERT [dbo].[ManufacturerTemplate] ON
INSERT [dbo].[ManufacturerTemplate] ([Id], [Name], [ViewPath], [DisplayOrder]) VALUES (1, N'Products in Grid or Lines', N'ManufacturerTemplate.ProductsInGridOrLines', 1)
SET IDENTITY_INSERT [dbo].[ManufacturerTemplate] OFF
GO


SET IDENTITY_INSERT [dbo].[ProductTemplate] ON
INSERT [dbo].[ProductTemplate] ([Id], [Name], [ViewPath], [DisplayOrder]) VALUES (1, N'Simple product', N'ProductTemplate.Simple', 10)
INSERT [dbo].[ProductTemplate] ([Id], [Name], [ViewPath], [DisplayOrder]) VALUES (2, N'Grouped product (with variants)', N'ProductTemplate.Grouped', 100)
SET IDENTITY_INSERT [dbo].[ProductTemplate] OFF
GO



SET IDENTITY_INSERT [dbo].[CategoryTemplate] ON
INSERT [dbo].[CategoryTemplate] ([Id], [Name], [ViewPath], [DisplayOrder]) VALUES (1, N'Products in Grid or Lines', N'CategoryTemplate.ProductsInGridOrLines', 1)
SET IDENTITY_INSERT [dbo].[CategoryTemplate] OFF
GO



SET IDENTITY_INSERT [dbo].[TopicTemplate] ON
INSERT [dbo].[TopicTemplate] ([Id], [Name], [ViewPath], [DisplayOrder]) VALUES (1, N'Default template', N'TopicDetails', 1)
SET IDENTITY_INSERT [dbo].[TopicTemplate] OFF
GO




SET IDENTITY_INSERT [dbo].[MeasureWeight] ON
INSERT [dbo].[MeasureWeight] ([Id], [Name], [SystemKeyword], [Ratio], [DisplayOrder]) VALUES (1, N'gram(s)', N'grams', CAST(1.00000000 AS Decimal(18, 8)), 1)
SET IDENTITY_INSERT [dbo].[MeasureWeight] OFF
GO




SET IDENTITY_INSERT [dbo].[MeasureDimension] ON
INSERT [dbo].[MeasureDimension] ([Id], [Name], [SystemKeyword], [Ratio], [DisplayOrder]) VALUES (1, N'inch(es)', N'inches', CAST(1.00000000 AS Decimal(18, 8)), 1)
SET IDENTITY_INSERT [dbo].[MeasureDimension] OFF
GO



SET IDENTITY_INSERT [dbo].[Language] ON
INSERT [dbo].[Language] ([Id], [Name], [LanguageCulture], [UniqueSeoCode], [FlagImageFileName], [Rtl], [LimitedToStores], [DefaultCurrencyId], [Published], [DisplayOrder]) VALUES (1, N'English', N'en-US', N'en', N'us.png', 0, 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Language] OFF
GO



SET IDENTITY_INSERT [dbo].[EmailAccount] ON
INSERT [dbo].[EmailAccount] ([Id], [Email], [DisplayName], [Host], [Port], [Username], [Password], [EnableSsl], [UseDefaultCredentials]) VALUES (1, N'test@mail.com', N'Store name', N'smtp.mail.com', 25, N'123', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[EmailAccount] OFF
GO



SET IDENTITY_INSERT [dbo].[Currency] ON
INSERT [dbo].[Currency] ([Id], [Name], [CurrencyCode], [Rate], [DisplayLocale], [CustomFormatting], [LimitedToStores], [Published], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Indian Rupee', N'INR', CAST(1.0000 AS Decimal(18, 4)), N'hi-IN', N'', 0, 1, 1, CAST(0x0000A56700C91529 AS DateTime), CAST(0x0000A56700C91529 AS DateTime))
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO





SET IDENTITY_INSERT [dbo].[Topic] ON
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (1, N'AboutUs', 0, 0, 1, 0, 0, 20, 0, 0, NULL, N'About us', N'<p>Put your &quot;About Us&quot; information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (2, N'CheckoutAsGuestOrRegister', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'', N'<p><strong>Register and save time!</strong><br />Register with us for future convenience:</p><ul><li>Fast and easy check out</li><li>Easy access to your order history and status</li></ul>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (3, N'ConditionsOfUse', 0, 0, 1, 0, 0, 15, 0, 0, NULL, N'Conditions of Use', N'<p>Put your conditions of use information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (4, N'ContactUs', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'', N'<p>Put your contact information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (5, N'ForumWelcomeMessage', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'Forums', N'<p>Put your welcome message here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (6, N'HomePageText', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'Welcome to our store', N'<p>Online shopping is the process consumers go through to purchase products or services over the Internet. You can edit this in the admin site.</p><p>If you have questions, see the <a href="http://www.nopcommerce.com/documentation.aspx">Documentation</a>, or post in the <a href="http://www.nopcommerce.com/boards/">Forums</a> at <a href="http://www.nopcommerce.com">nopCommerce.com</a></p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (7, N'LoginRegistrationInfo', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'About login / registration', N'<p>Put your login / registration information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (8, N'PrivacyInfo', 0, 0, 1, 0, 0, 10, 0, 0, NULL, N'Privacy notice', N'<p>Put your privacy policy information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (9, N'PageNotFound', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'', N'<p><strong>The page you requested was not found, and we have a fine guess why.</strong></p><ul><li>If you typed the URL directly, please make sure the spelling is correct.</li><li>The page no longer exists. In this case, we profusely apologize for the inconvenience and for any damage this may cause.</li></ul>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (10, N'ShippingInfo', 0, 0, 1, 0, 0, 5, 0, 0, NULL, N'Shipping & returns', N'<p>Put your shipping &amp; returns information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Topic] ([Id], [SystemName], [IncludeInSitemap], [IncludeInTopMenu], [IncludeInFooterColumn1], [IncludeInFooterColumn2], [IncludeInFooterColumn3], [DisplayOrder], [AccessibleWhenStoreClosed], [IsPasswordProtected], [Password], [Title], [Body], [TopicTemplateId], [MetaKeywords], [MetaDescription], [MetaTitle], [SubjectToAcl], [LimitedToStores]) VALUES (11, N'ApplyVendor', 0, 0, 0, 0, 0, 1, 0, 0, NULL, N'', N'<p>Put your apply vendor instructions here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Topic] OFF
GO



SET IDENTITY_INSERT [dbo].[TaxCategory] ON
INSERT [dbo].[TaxCategory] ([Id], [Name], [DisplayOrder]) VALUES (1, N'Books', 1)
INSERT [dbo].[TaxCategory] ([Id], [Name], [DisplayOrder]) VALUES (2, N'Electronics & Software', 5)
INSERT [dbo].[TaxCategory] ([Id], [Name], [DisplayOrder]) VALUES (3, N'Downloadable Products', 10)
INSERT [dbo].[TaxCategory] ([Id], [Name], [DisplayOrder]) VALUES (4, N'Jewelry', 15)
INSERT [dbo].[TaxCategory] ([Id], [Name], [DisplayOrder]) VALUES (5, N'Apparel', 20)
SET IDENTITY_INSERT [dbo].[TaxCategory] OFF
GO



SET IDENTITY_INSERT [dbo].[ShippingMethod] ON
INSERT [dbo].[Country] ([Id], [Name], [AllowsBilling], [AllowsShipping], [TwoLetterIsoCode], [ThreeLetterIsoCode], [NumericIsoCode], [SubjectToVat], [Published], [DisplayOrder], [LimitedToStores]) VALUES (1, N'India', 1, 1, N'IN', N'IND', 100, 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO



SET IDENTITY_INSERT [dbo].[ActivityLogType] ON
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (1, N'AddNewCategory', N'Add a new category', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (2, N'AddNewCheckoutAttribute', N'Add a new checkout attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (3, N'AddNewCustomer', N'Add a new customer', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (4, N'AddNewCustomerRole', N'Add a new customer role', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (5, N'AddNewDiscount', N'Add a new discount', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (6, N'AddNewGiftCard', N'Add a new gift card', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (7, N'AddNewManufacturer', N'Add a new manufacturer', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (8, N'AddNewProduct', N'Add a new product', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (9, N'AddNewProductAttribute', N'Add a new product attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (10, N'AddNewSetting', N'Add a new setting', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (11, N'AddNewSpecAttribute', N'Add a new specification attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (12, N'AddNewWidget', N'Add a new widget', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (13, N'DeleteCategory', N'Delete category', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (14, N'DeleteCheckoutAttribute', N'Delete a checkout attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (15, N'DeleteCustomer', N'Delete a customer', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (16, N'DeleteCustomerRole', N'Delete a customer role', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (17, N'DeleteDiscount', N'Delete a discount', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (18, N'DeleteGiftCard', N'Delete a gift card', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (19, N'DeleteManufacturer', N'Delete a manufacturer', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (20, N'DeleteProduct', N'Delete a product', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (21, N'DeleteProductAttribute', N'Delete a product attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (22, N'DeleteReturnRequest', N'Delete a return request', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (23, N'DeleteSetting', N'Delete a setting', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (24, N'DeleteSpecAttribute', N'Delete a specification attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (25, N'DeleteWidget', N'Delete a widget', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (26, N'EditCategory', N'Edit category', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (27, N'EditCheckoutAttribute', N'Edit a checkout attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (28, N'EditCustomer', N'Edit a customer', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (29, N'EditCustomerRole', N'Edit a customer role', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (30, N'EditDiscount', N'Edit a discount', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (31, N'EditGiftCard', N'Edit a gift card', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (32, N'EditManufacturer', N'Edit a manufacturer', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (33, N'EditProduct', N'Edit a product', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (34, N'EditProductAttribute', N'Edit a product attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (35, N'EditPromotionProviders', N'Edit promotion providers', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (36, N'EditReturnRequest', N'Edit a return request', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (37, N'EditSettings', N'Edit setting(s)', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (38, N'EditSpecAttribute', N'Edit a specification attribute', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (39, N'EditWidget', N'Edit a widget', 1)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (40, N'PublicStore.ViewCategory', N'Public store. View a category', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (41, N'PublicStore.ViewManufacturer', N'Public store. View a manufacturer', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (42, N'PublicStore.ViewProduct', N'Public store. View a product', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (43, N'PublicStore.PlaceOrder', N'Public store. Place an order', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (44, N'PublicStore.SendPM', N'Public store. Send PM', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (45, N'PublicStore.ContactUs', N'Public store. Use contact us form', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (46, N'PublicStore.AddToCompareList', N'Public store. Add to compare list', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (47, N'PublicStore.AddToShoppingCart', N'Public store. Add to shopping cart', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (48, N'PublicStore.AddToWishlist', N'Public store. Add to wishlist', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (49, N'PublicStore.Login', N'Public store. Login', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (50, N'PublicStore.Logout', N'Public store. Logout', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (51, N'PublicStore.AddProductReview', N'Public store. Add product review', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (52, N'PublicStore.AddNewsComment', N'Public store. Add news comment', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (53, N'PublicStore.AddBlogComment', N'Public store. Add blog comment', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (54, N'PublicStore.AddForumTopic', N'Public store. Add forum topic', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (55, N'PublicStore.EditForumTopic', N'Public store. Edit forum topic', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (56, N'PublicStore.DeleteForumTopic', N'Public store. Delete forum topic', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (57, N'PublicStore.AddForumPost', N'Public store. Add forum post', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (58, N'PublicStore.EditForumPost', N'Public store. Edit forum post', 0)
INSERT [dbo].[ActivityLogType] ([Id], [SystemKeyword], [Name], [Enabled]) VALUES (59, N'PublicStore.DeleteForumPost', N'Public store. Delete forum post', 0)
SET IDENTITY_INSERT [dbo].[ActivityLogType] OFF
GO


SET IDENTITY_INSERT [dbo].[Setting] ON
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (1, N'pdfsettings.logopictureid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (2, N'pdfsettings.letterpagesizeenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (3, N'pdfsettings.renderordernotes', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (4, N'pdfsettings.disablepdfinvoicesforpendingorders', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (5, N'pdfsettings.fontfilename', N'FreeSerif.ttf', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (6, N'pdfsettings.invoicefootertextcolumn1', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (7, N'pdfsettings.invoicefootertextcolumn2', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (8, N'commonsettings.subjectfieldoncontactusform', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (9, N'commonsettings.usesystememailforcontactusform', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (10, N'commonsettings.usestoredproceduresifsupported', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (11, N'commonsettings.hideadvertisementsonadminarea', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (12, N'commonsettings.sitemapenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (13, N'commonsettings.sitemapincludecategories', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (14, N'commonsettings.sitemapincludemanufacturers', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (15, N'commonsettings.sitemapincludeproducts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (16, N'commonsettings.displayjavascriptdisabledwarning', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (17, N'commonsettings.usefulltextsearch', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (18, N'commonsettings.fulltextmode', N'ExactMatch', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (19, N'commonsettings.log404errors', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (20, N'commonsettings.breadcrumbdelimiter', N'/', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (21, N'commonsettings.renderxuacompatible', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (22, N'commonsettings.xuacompatiblevalue', N'IE=edge', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (23, N'commonsettings.ignorelogwordlist', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (24, N'seosettings.pagetitleseparator', N'. ', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (25, N'seosettings.pagetitleseoadjustment', N'PagenameAfterStorename', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (26, N'seosettings.defaulttitle', N'Your store', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (27, N'seosettings.defaultmetakeywords', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (28, N'seosettings.defaultmetadescription', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (29, N'seosettings.generateproductmetadescription', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (30, N'seosettings.convertnonwesternchars', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (31, N'seosettings.allowunicodecharsinurls', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (32, N'seosettings.canonicalurlsenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (33, N'seosettings.wwwrequirement', N'NoMatter', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (34, N'seosettings.enablejsbundling', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (35, N'seosettings.enablecssbundling', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (36, N'seosettings.twittermetatags', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (37, N'seosettings.opengraphmetatags', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (38, N'seosettings.reservedurlrecordslugs', N'admin,install,recentlyviewedproducts,newproducts,compareproducts,clearcomparelist,setproductreviewhelpfulness,login,register,logout,cart,wishlist,emailwishlist,checkout,onepagecheckout,contactus,passwordrecovery,subscribenewsletter,blog,boards,inboxupdate,sentupdate,news,sitemap,search,config,eucookielawaccept,page-not-found', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (39, N'adminareasettings.defaultgridpagesize', N'15', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (40, N'adminareasettings.gridpagesizes', N'10, 15, 20, 50, 100', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (41, N'adminareasettings.richeditoradditionalsettings', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (42, N'adminareasettings.richeditorallowjavascript', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (43, N'catalogsettings.allowviewunpublishedproductpage', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (44, N'catalogsettings.displaydiscontinuedmessageforunpublishedproducts', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (45, N'catalogsettings.publishbackproductwhencancellingorders', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (46, N'catalogsettings.showproductsku', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (47, N'catalogsettings.showmanufacturerpartnumber', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (48, N'catalogsettings.showgtin', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (49, N'catalogsettings.showfreeshippingnotification', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (50, N'catalogsettings.allowproductsorting', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (51, N'catalogsettings.allowproductviewmodechanging', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (52, N'catalogsettings.defaultviewmode', N'grid', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (53, N'catalogsettings.showproductsfromsubcategories', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (54, N'catalogsettings.showcategoryproductnumber', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (55, N'catalogsettings.showcategoryproductnumberincludingsubcategories', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (56, N'catalogsettings.categorybreadcrumbenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (57, N'catalogsettings.showsharebutton', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (58, N'catalogsettings.pagesharecode', N'<!-- AddThis Button BEGIN --><div class="addthis_toolbox addthis_default_style "><a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2"></a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4"></a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style"></a></div><script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=nopsolutions"></script><!-- AddThis Button END -->', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (59, N'catalogsettings.productreviewsmustbeapproved', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (60, N'catalogsettings.defaultproductratingvalue', N'5', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (61, N'catalogsettings.allowanonymoususerstoreviewproduct', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (62, N'catalogsettings.notifystoreowneraboutnewproductreviews', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (63, N'catalogsettings.emailafriendenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (64, N'catalogsettings.allowanonymoususerstoemailafriend', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (65, N'catalogsettings.recentlyviewedproductsnumber', N'3', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (66, N'catalogsettings.recentlyviewedproductsenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (67, N'catalogsettings.newproductsnumber', N'6', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (68, N'catalogsettings.newproductsenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (69, N'catalogsettings.compareproductsenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (70, N'catalogsettings.compareproductsnumber', N'4', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (71, N'catalogsettings.productsearchautocompleteenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (72, N'catalogsettings.productsearchautocompletenumberofproducts', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (73, N'catalogsettings.showproductimagesinsearchautocomplete', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (74, N'catalogsettings.productsearchtermminimumlength', N'3', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (75, N'catalogsettings.showbestsellersonhomepage', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (76, N'catalogsettings.numberofbestsellersonhomepage', N'4', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (77, N'catalogsettings.searchpageproductsperpage', N'6', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (78, N'catalogsettings.searchpageallowcustomerstoselectpagesize', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (79, N'catalogsettings.searchpagepagesizeoptions', N'6, 3, 9, 18', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (80, N'catalogsettings.productsalsopurchasedenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (81, N'catalogsettings.productsalsopurchasednumber', N'3', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (82, N'catalogsettings.ajaxprocessattributechange', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (83, N'catalogsettings.numberofproducttags', N'15', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (84, N'catalogsettings.productsbytagpagesize', N'6', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (85, N'catalogsettings.productsbytagallowcustomerstoselectpagesize', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (86, N'catalogsettings.productsbytagpagesizeoptions', N'6, 3, 9, 18', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (87, N'catalogsettings.includeshortdescriptionincompareproducts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (88, N'catalogsettings.includefulldescriptionincompareproducts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (89, N'catalogsettings.includefeaturedproductsinnormallists', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (90, N'catalogsettings.displaytierpriceswithdiscounts', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (91, N'catalogsettings.ignorediscounts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (92, N'catalogsettings.ignorefeaturedproducts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (93, N'catalogsettings.ignoreacl', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (94, N'catalogsettings.ignorestorelimitations', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (95, N'catalogsettings.cacheproductprices', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (96, N'catalogsettings.maximumbackinstocksubscriptions', N'200', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (97, N'catalogsettings.manufacturersblockitemstodisplay', N'2', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (98, N'catalogsettings.displaytaxshippinginfofooter', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (99, N'catalogsettings.displaytaxshippinginfoproductdetailspage', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (100, N'catalogsettings.displaytaxshippinginfoproductboxes', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (101, N'catalogsettings.displaytaxshippinginfoshoppingcart', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (102, N'catalogsettings.displaytaxshippinginfowishlist', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (103, N'catalogsettings.displaytaxshippinginfoorderdetailspage', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (104, N'catalogsettings.defaultcategorypagesizeoptions', N'6, 3, 9', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (105, N'catalogsettings.defaultcategorypagesize', N'6', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (106, N'catalogsettings.defaultmanufacturerpagesizeoptions', N'6, 3, 9', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (107, N'catalogsettings.defaultmanufacturerpagesize', N'6', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (108, N'localizationsettings.defaultadminlanguageid', N'1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (109, N'localizationsettings.useimagesforlanguageselection', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (110, N'localizationsettings.seofriendlyurlsforlanguagesenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (111, N'localizationsettings.automaticallydetectlanguage', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (112, N'localizationsettings.loadalllocalerecordsonstartup', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (113, N'localizationsettings.loadalllocalizedpropertiesonstartup', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (114, N'localizationsettings.loadallurlrecordsonstartup', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (115, N'localizationsettings.ignorertlpropertyforadminarea', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (116, N'customersettings.usernamesenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (117, N'customersettings.checkusernameavailabilityenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (118, N'customersettings.allowuserstochangeusernames', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (119, N'customersettings.defaultpasswordformat', N'Hashed', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (120, N'customersettings.hashedpasswordformat', N'SHA1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (121, N'customersettings.passwordminlength', N'6', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (122, N'customersettings.passwordrecoverylinkdaysvalid', N'7', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (123, N'customersettings.userregistrationtype', N'Standard', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (124, N'customersettings.allowcustomerstouploadavatars', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (125, N'customersettings.avatarmaximumsizebytes', N'20000', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (126, N'customersettings.defaultavatarenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (127, N'customersettings.showcustomerslocation', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (128, N'customersettings.showcustomersjoindate', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (129, N'customersettings.allowviewingprofiles', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (130, N'customersettings.notifynewcustomerregistration', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (131, N'customersettings.hidedownloadableproductstab', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (132, N'customersettings.hidebackinstocksubscriptionstab', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (133, N'customersettings.downloadableproductsvalidateuser', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (134, N'customersettings.customernameformat', N'ShowFirstName', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (135, N'customersettings.newsletterenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (136, N'customersettings.newslettertickedbydefault', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (137, N'customersettings.hidenewsletterblock', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (138, N'customersettings.newsletterblockallowtounsubscribe', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (139, N'customersettings.onlinecustomerminutes', N'20', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (140, N'customersettings.storelastvisitedpage', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (141, N'customersettings.suffixdeletedcustomers', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (142, N'customersettings.genderenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (143, N'customersettings.dateofbirthenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (144, N'customersettings.dateofbirthrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (145, N'customersettings.dateofbirthminimumage', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (146, N'customersettings.companyenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (147, N'customersettings.companyrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (148, N'customersettings.streetaddressenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (149, N'customersettings.streetaddressrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (150, N'customersettings.streetaddress2enabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (151, N'customersettings.streetaddress2required', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (152, N'customersettings.zippostalcodeenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (153, N'customersettings.zippostalcoderequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (154, N'customersettings.cityenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (155, N'customersettings.cityrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (156, N'customersettings.countryenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (157, N'customersettings.countryrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (158, N'customersettings.stateprovinceenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (159, N'customersettings.stateprovincerequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (160, N'customersettings.phoneenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (161, N'customersettings.phonerequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (162, N'customersettings.faxenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (163, N'customersettings.faxrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (164, N'customersettings.acceptprivacypolicyenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (165, N'addresssettings.companyenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (166, N'addresssettings.companyrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (167, N'addresssettings.streetaddressenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (168, N'addresssettings.streetaddressrequired', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (169, N'addresssettings.streetaddress2enabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (170, N'addresssettings.streetaddress2required', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (171, N'addresssettings.zippostalcodeenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (172, N'addresssettings.zippostalcoderequired', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (173, N'addresssettings.cityenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (174, N'addresssettings.cityrequired', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (175, N'addresssettings.countryenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (176, N'addresssettings.stateprovinceenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (177, N'addresssettings.phoneenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (178, N'addresssettings.phonerequired', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (179, N'addresssettings.faxenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (180, N'addresssettings.faxrequired', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (181, N'mediasettings.avatarpicturesize', N'120', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (182, N'mediasettings.productthumbpicturesize', N'415', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (183, N'mediasettings.productdetailspicturesize', N'550', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (184, N'mediasettings.productthumbpicturesizeonproductdetailspage', N'100', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (185, N'mediasettings.associatedproductpicturesize', N'220', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (186, N'mediasettings.categorythumbpicturesize', N'450', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (187, N'mediasettings.manufacturerthumbpicturesize', N'420', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (188, N'mediasettings.vendorthumbpicturesize', N'450', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (189, N'mediasettings.cartthumbpicturesize', N'80', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (190, N'mediasettings.minicartthumbpicturesize', N'70', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (191, N'mediasettings.autocompletesearchthumbpicturesize', N'20', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (192, N'mediasettings.defaultpicturezoomenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (193, N'mediasettings.maximumimagesize', N'1980', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (194, N'mediasettings.defaultimagequality', N'80', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (195, N'mediasettings.multiplethumbdirectories', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (196, N'storeinformationsettings.hidepoweredbynopcommerce', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (197, N'storeinformationsettings.storeclosed', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (198, N'storeinformationsettings.defaultstoretheme', N'DefaultClean', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (199, N'storeinformationsettings.allowcustomertoselecttheme', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (200, N'storeinformationsettings.displayminiprofilerinpublicstore', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (201, N'storeinformationsettings.displayeucookielawwarning', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (202, N'storeinformationsettings.facebooklink', N'http://www.facebook.com/nopCommerce', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (203, N'storeinformationsettings.twitterlink', N'https://twitter.com/nopCommerce', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (204, N'storeinformationsettings.youtubelink', N'http://www.youtube.com/user/nopCommerce', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (205, N'storeinformationsettings.googlepluslink', N'https://plus.google.com/+nopcommerce', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (206, N'externalauthenticationsettings.autoregisterenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (207, N'externalauthenticationsettings.requireemailvalidation', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (208, N'externalauthenticationsettings.activeauthenticationmethodsystemnames', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (209, N'rewardpointssettings.enabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (210, N'rewardpointssettings.exchangerate', N'1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (211, N'rewardpointssettings.minimumrewardpointstouse', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (212, N'rewardpointssettings.pointsforregistration', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (213, N'rewardpointssettings.pointsforpurchases_amount', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (214, N'rewardpointssettings.pointsforpurchases_points', N'1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (215, N'rewardpointssettings.pointsforpurchases_awarded', N'Complete', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (216, N'rewardpointssettings.pointsforpurchases_canceled', N'Cancelled', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (217, N'rewardpointssettings.displayhowmuchwillbeearned', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (218, N'rewardpointssettings.pointsaccumulatedforallstores', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (219, N'currencysettings.displaycurrencylabel', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (220, N'currencysettings.primarystorecurrencyid', N'1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (221, N'currencysettings.primaryexchangeratecurrencyid', N'1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (222, N'currencysettings.activeexchangerateprovidersystemname', N'CurrencyExchange.MoneyConverter', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (223, N'currencysettings.autoupdateenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (224, N'measuresettings.basedimensionid', N'1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (225, N'measuresettings.baseweightid', N'2', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (226, N'messagetemplatessettings.caseinvariantreplacement', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (227, N'messagetemplatessettings.color1', N'#b9babe', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (228, N'messagetemplatessettings.color2', N'#ebecee', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (229, N'messagetemplatessettings.color3', N'#dde2e6', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (230, N'shoppingcartsettings.displaycartafteraddingproduct', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (231, N'shoppingcartsettings.displaywishlistafteraddingproduct', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (232, N'shoppingcartsettings.maximumshoppingcartitems', N'1000', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (233, N'shoppingcartsettings.maximumwishlistitems', N'1000', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (234, N'shoppingcartsettings.allowoutofstockitemstobeaddedtowishlist', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (235, N'shoppingcartsettings.moveitemsfromwishlisttocart', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (236, N'shoppingcartsettings.showproductimagesonshoppingcart', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (237, N'shoppingcartsettings.showproductimagesonwishlist', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (238, N'shoppingcartsettings.showdiscountbox', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (239, N'shoppingcartsettings.showgiftcardbox', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (240, N'shoppingcartsettings.crosssellsnumber', N'4', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (241, N'shoppingcartsettings.emailwishlistenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (242, N'shoppingcartsettings.allowanonymoususerstoemailwishlist', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (243, N'shoppingcartsettings.minishoppingcartenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (244, N'shoppingcartsettings.showproductimagesinminishoppingcart', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (245, N'shoppingcartsettings.minishoppingcartproductnumber', N'5', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (246, N'shoppingcartsettings.roundpricesduringcalculation', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (247, N'shoppingcartsettings.grouptierpricesfordistinctshoppingcartitems', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (248, N'shoppingcartsettings.allowcartitemediting', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (249, N'shoppingcartsettings.renderassociatedattributevaluequantity', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (250, N'ordersettings.isreorderallowed', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (251, N'ordersettings.minordersubtotalamount', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (252, N'ordersettings.minordersubtotalamountincludingtax', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (253, N'ordersettings.minordertotalamount', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (254, N'ordersettings.anonymouscheckoutallowed', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (255, N'ordersettings.termsofserviceonshoppingcartpage', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (256, N'ordersettings.termsofserviceonorderconfirmpage', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (257, N'ordersettings.onepagecheckoutenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (258, N'ordersettings.onepagecheckoutdisplayordertotalsonpaymentinfotab', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (259, N'ordersettings.disablebillingaddresscheckoutstep', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (260, N'ordersettings.disableordercompletedpage', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (261, N'ordersettings.attachpdfinvoicetoorderplacedemail', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (262, N'ordersettings.attachpdfinvoicetoorderpaidemail', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (263, N'ordersettings.attachpdfinvoicetoordercompletedemail', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (264, N'ordersettings.returnrequestsenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (265, N'ordersettings.numberofdaysreturnrequestavailable', N'365', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (266, N'ordersettings.giftcards_activated_orderstatusid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (267, N'ordersettings.giftcards_deactivated_orderstatusid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (268, N'ordersettings.minimumorderplacementinterval', N'30', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (269, N'securitysettings.forcesslforallpages', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (270, N'securitysettings.encryptionkey', N'9900987817056773', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (271, N'securitysettings.adminareaallowedipaddresses', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (272, N'securitysettings.enablexsrfprotectionforadminarea', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (273, N'securitysettings.enablexsrfprotectionforpublicstore', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (274, N'securitysettings.honeypotenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (275, N'securitysettings.honeypotinputname', N'hpinput', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (276, N'shippingsettings.activeshippingratecomputationmethodsystemnames', N'Shipping.FixedRate', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (277, N'shippingsettings.allowpickupinstore', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (278, N'shippingsettings.pickupinstorefee', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (279, N'shippingsettings.usewarehouselocation', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (280, N'shippingsettings.notifycustomeraboutshippingfrommultiplelocations', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (281, N'shippingsettings.freeshippingoverxenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (282, N'shippingsettings.freeshippingoverxvalue', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (283, N'shippingsettings.freeshippingoverxincludingtax', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (284, N'shippingsettings.estimateshippingenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (285, N'shippingsettings.displayshipmenteventstocustomers', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (286, N'shippingsettings.displayshipmenteventstostoreowner', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (287, N'shippingsettings.shippingoriginaddressid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (288, N'shippingsettings.returnvalidoptionsifthereareany', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (289, N'shippingsettings.bypassshippingmethodselectionifonlyone', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (290, N'shippingsettings.usecuberootmethod', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (291, N'paymentsettings.activepaymentmethodsystemnames', N'Payments.CheckMoneyOrder,Payments.Manual,Payments.PayInStore,Payments.PurchaseOrder', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (292, N'paymentsettings.allowrepostingpayments', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (293, N'paymentsettings.bypasspaymentmethodselectionifonlyone', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (294, N'taxsettings.taxbasedon', N'BillingAddress', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (295, N'taxsettings.taxdisplaytype', N'ExcludingTax', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (296, N'taxsettings.activetaxprovidersystemname', N'Tax.FixedRate', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (297, N'taxsettings.defaulttaxaddressid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (298, N'taxsettings.displaytaxsuffix', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (299, N'taxsettings.displaytaxrates', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (300, N'taxsettings.pricesincludetax', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (301, N'taxsettings.allowcustomerstoselecttaxdisplaytype', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (302, N'taxsettings.hidezerotax', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (303, N'taxsettings.hidetaxinordersummary', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (304, N'taxsettings.forcetaxexclusionfromordersubtotal', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (305, N'taxsettings.shippingistaxable', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (306, N'taxsettings.shippingpriceincludestax', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (307, N'taxsettings.shippingtaxclassid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (308, N'taxsettings.paymentmethodadditionalfeeistaxable', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (309, N'taxsettings.paymentmethodadditionalfeeincludestax', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (310, N'taxsettings.paymentmethodadditionalfeetaxclassid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (311, N'taxsettings.euvatenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (312, N'taxsettings.euvatshopcountryid', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (313, N'taxsettings.euvatallowvatexemption', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (314, N'taxsettings.euvatusewebservice', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (315, N'taxsettings.euvatassumevalid', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (316, N'taxsettings.euvatemailadminwhennewvatsubmitted', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (317, N'datetimesettings.defaultstoretimezoneid', N'', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (318, N'datetimesettings.allowcustomerstosettimezone', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (319, N'blogsettings.enabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (320, N'blogsettings.postspagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (321, N'blogsettings.allownotregistereduserstoleavecomments', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (322, N'blogsettings.notifyaboutnewblogcomments', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (323, N'blogsettings.numberoftags', N'15', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (324, N'blogsettings.showheaderrssurl', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (325, N'newssettings.enabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (326, N'newssettings.allownotregistereduserstoleavecomments', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (327, N'newssettings.notifyaboutnewnewscomments', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (328, N'newssettings.shownewsonmainpage', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (329, N'newssettings.mainpagenewscount', N'3', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (330, N'newssettings.newsarchivepagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (331, N'newssettings.showheaderrssurl', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (332, N'forumsettings.forumsenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (333, N'forumsettings.relativedatetimeformattingenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (334, N'forumsettings.allowcustomerstoeditposts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (335, N'forumsettings.allowcustomerstomanagesubscriptions', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (336, N'forumsettings.allowgueststocreateposts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (337, N'forumsettings.allowgueststocreatetopics', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (338, N'forumsettings.allowcustomerstodeleteposts', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (339, N'forumsettings.topicsubjectmaxlength', N'450', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (340, N'forumsettings.strippedtopicmaxlength', N'45', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (341, N'forumsettings.postmaxlength', N'4000', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (342, N'forumsettings.topicspagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (343, N'forumsettings.postspagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (344, N'forumsettings.searchresultspagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (345, N'forumsettings.activediscussionspagesize', N'50', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (346, N'forumsettings.latestcustomerpostspagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (347, N'forumsettings.showcustomerspostcount', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (348, N'forumsettings.forumeditor', N'BBCodeEditor', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (349, N'forumsettings.signaturesenabled', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (350, N'forumsettings.allowprivatemessages', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (351, N'forumsettings.showalertforpm', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (352, N'forumsettings.privatemessagespagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (353, N'forumsettings.forumsubscriptionspagesize', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (354, N'forumsettings.notifyaboutprivatemessages', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (355, N'forumsettings.pmsubjectmaxlength', N'450', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (356, N'forumsettings.pmtextmaxlength', N'4000', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (357, N'forumsettings.homepageactivediscussionstopiccount', N'5', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (358, N'forumsettings.activediscussionsfeedcount', N'25', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (359, N'forumsettings.activediscussionsfeedenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (360, N'forumsettings.forumfeedsenabled', N'False', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (361, N'forumsettings.forumfeedcount', N'10', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (362, N'forumsettings.forumsearchtermminimumlength', N'3', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (363, N'vendorsettings.defaultvendorpagesizeoptions', N'6, 3, 9', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (364, N'vendorsettings.vendorsblockitemstodisplay', N'0', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (365, N'vendorsettings.showvendoronproductdetailspage', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (366, N'vendorsettings.allowcustomerstocontactvendors', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (367, N'vendorsettings.allowcustomerstoapplyforvendoraccount', N'True', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (368, N'emailaccountsettings.defaultemailaccountid', N'1', 0)
INSERT [dbo].[Setting] ([Id], [Name], [Value], [StoreId]) VALUES (369, N'widgetsettings.activewidgetsystemnames', N'Widgets.NivoSlider', 0)
SET IDENTITY_INSERT [dbo].[Setting] OFF
GO




SET IDENTITY_INSERT [dbo].[ScheduleTask] ON
INSERT [dbo].[ScheduleTask] ([Id], [Name], [Seconds], [Type], [Enabled], [StopOnError], [LeasedByMachineName], [LeasedUntilUtc], [LastStartUtc], [LastEndUtc], [LastSuccessUtc]) VALUES (1, N'Send emails', 60, N'Nop.Services.Messages.QueuedMessagesSendTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleTask] ([Id], [Name], [Seconds], [Type], [Enabled], [StopOnError], [LeasedByMachineName], [LeasedUntilUtc], [LastStartUtc], [LastEndUtc], [LastSuccessUtc]) VALUES (2, N'Keep alive', 300, N'Nop.Services.Common.KeepAliveTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleTask] ([Id], [Name], [Seconds], [Type], [Enabled], [StopOnError], [LeasedByMachineName], [LeasedUntilUtc], [LastStartUtc], [LastEndUtc], [LastSuccessUtc]) VALUES (3, N'Delete guests', 600, N'Nop.Services.Customers.DeleteGuestsTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleTask] ([Id], [Name], [Seconds], [Type], [Enabled], [StopOnError], [LeasedByMachineName], [LeasedUntilUtc], [LastStartUtc], [LastEndUtc], [LastSuccessUtc]) VALUES (4, N'Clear cache', 600, N'Nop.Services.Caching.ClearCacheTask, Nop.Services', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleTask] ([Id], [Name], [Seconds], [Type], [Enabled], [StopOnError], [LeasedByMachineName], [LeasedUntilUtc], [LastStartUtc], [LastEndUtc], [LastSuccessUtc]) VALUES (5, N'Clear log', 3600, N'Nop.Services.Logging.ClearLogTask, Nop.Services', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleTask] ([Id], [Name], [Seconds], [Type], [Enabled], [StopOnError], [LeasedByMachineName], [LeasedUntilUtc], [LastStartUtc], [LastEndUtc], [LastSuccessUtc]) VALUES (6, N'Update currency exchange rates', 3600, N'Nop.Services.Directory.UpdateExchangeRateTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ScheduleTask] OFF
GO




SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [VendorId], [HasShoppingCartItems], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id]) VALUES (1, N'814f3da6-567a-49bc-b508-f7c3a97d8a61', N'admin@yourStore.com', N'admin@yourStore.com', N'7EEFED25B9C97805E24332E3E77A2B91C7EB5473', 1, N'Oni2/wU=', NULL, 0, 0, 0, 0, 1, 0, 0, NULL, N'127.0.0.1', CAST(0x0000A56700C91580 AS DateTime), NULL, CAST(0x0000A56700C91580 AS DateTime), NULL, NULL)
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [VendorId], [HasShoppingCartItems], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id]) VALUES (2, N'defc2ca7-65a1-4878-8a15-4ac75779a62e', NULL, N'builtin@search_engine_record.com', NULL, 0, NULL, N'Built-in system guest record used for requests from search engines.', 0, 0, 0, 0, 1, 0, 1, N'SearchEngine', NULL, CAST(0x0000A56700C915A9 AS DateTime), NULL, CAST(0x0000A56700C915A9 AS DateTime), NULL, NULL)
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [VendorId], [HasShoppingCartItems], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id]) VALUES (3, N'bb3f07f7-86c5-4e30-899f-334aaea95cde', NULL, N'builtin@background-task-record.com', NULL, 0, NULL, N'Built-in system record used for background tasks.', 0, 0, 0, 0, 1, 0, 1, N'BackgroundTask', NULL, CAST(0x0000A56700C915AB AS DateTime), NULL, CAST(0x0000A56700C915AB AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO



SET IDENTITY_INSERT [dbo].[CustomerRole] ON
INSERT [dbo].[CustomerRole] ([Id], [Name], [FreeShipping], [TaxExempt], [Active], [IsSystemRole], [SystemName], [PurchasedWithProductId]) VALUES (1, N'Administrators', 0, 0, 1, 1, N'Administrators', 0)
INSERT [dbo].[CustomerRole] ([Id], [Name], [FreeShipping], [TaxExempt], [Active], [IsSystemRole], [SystemName], [PurchasedWithProductId]) VALUES (2, N'Forum Moderators', 0, 0, 1, 1, N'ForumModerators', 0)
INSERT [dbo].[CustomerRole] ([Id], [Name], [FreeShipping], [TaxExempt], [Active], [IsSystemRole], [SystemName], [PurchasedWithProductId]) VALUES (3, N'Registered', 0, 0, 1, 1, N'Registered', 0)
INSERT [dbo].[CustomerRole] ([Id], [Name], [FreeShipping], [TaxExempt], [Active], [IsSystemRole], [SystemName], [PurchasedWithProductId]) VALUES (4, N'Guests', 0, 0, 1, 1, N'Guests', 0)
INSERT [dbo].[CustomerRole] ([Id], [Name], [FreeShipping], [TaxExempt], [Active], [IsSystemRole], [SystemName], [PurchasedWithProductId]) VALUES (5, N'Vendors', 0, 0, 1, 1, N'Vendors', 0)
SET IDENTITY_INSERT [dbo].[CustomerRole] OFF
GO




INSERT [dbo].[Customer_CustomerRole_Mapping] ([Customer_Id], [CustomerRole_Id]) VALUES (1, 1)
INSERT [dbo].[Customer_CustomerRole_Mapping] ([Customer_Id], [CustomerRole_Id]) VALUES (1, 2)
INSERT [dbo].[Customer_CustomerRole_Mapping] ([Customer_Id], [CustomerRole_Id]) VALUES (1, 3)
INSERT [dbo].[Customer_CustomerRole_Mapping] ([Customer_Id], [CustomerRole_Id]) VALUES (2, 4)
INSERT [dbo].[Customer_CustomerRole_Mapping] ([Customer_Id], [CustomerRole_Id]) VALUES (3, 4)
GO







SET IDENTITY_INSERT [dbo].[DeliveryDate] ON
INSERT [dbo].[DeliveryDate] ([Id], [Name], [DisplayOrder]) VALUES (2, N'3-5 days', 1)
SET IDENTITY_INSERT [dbo].[DeliveryDate] OFF
GO



SET IDENTITY_INSERT [dbo].[ReturnRequestReason] ON
INSERT [dbo].[ReturnRequestReason] ([Id], [Name], [DisplayOrder]) VALUES (1, N'Received Wrong Product', 1)
INSERT [dbo].[ReturnRequestReason] ([Id], [Name], [DisplayOrder]) VALUES (2, N'There Was A Problem With The Product', 2)
SET IDENTITY_INSERT [dbo].[ReturnRequestReason] OFF
GO




SET IDENTITY_INSERT [dbo].[ReturnRequestAction] ON
INSERT [dbo].[ReturnRequestAction] ([Id], [Name], [DisplayOrder]) VALUES (1, N'Replacement', 1)
INSERT [dbo].[ReturnRequestAction] ([Id], [Name], [DisplayOrder]) VALUES (2, N'Store Credit', 2)
SET IDENTITY_INSERT [dbo].[ReturnRequestAction] OFF
GO