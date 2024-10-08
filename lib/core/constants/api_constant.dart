// class Endpoints {
//   Endpoints._();

//   // base url
//   static const String baseUrl = "https://api.tikasocial.com/api/v1";

//   // receiveTimeout
//   static const int receiveTimeout = 15000;

//   // connectTimeout
//   static const int connectionTimeout = 15000;

// // Authentication Endpoints
//   static const String login = '/auth/login';
//   static const String register = '/auth/register';
//   static const String changePassword = '/auth/change-password';
//   static const String forgotPassword = '/auth/forgot-password';
//   static const String refreshToken = '/auth/token/refresh';
//   static const String verifyEmailOtp = '/auth/verify-email-otp';
//   static const String resendOtp = '/auth/resend-email-otp';
//   static const String googleAuth = '/auth/google';
//   static const String resetPassword = '/auth/reset-password';
//   static const String deleteAccount = '/auth/delete-account';
//   static const String updateLocation = '/auth/update-location';

// // Upload Image Endpoints
//   static const String uploadImage = '/upload-image';

// // Profile Endpoints : both get and update profile
//   static const profiles = '/profile';
// // 
// // Profile Feedback Endpoints
//   static const profileFeedback = '/profile/feedbacks';

//   static String getProfile(String userId) => '/profile/user-profile/$userId';

//   static String getUserLiked(String userId) => '/profile/get-user-liked/$userId';
//   static String getUserLikes(String userId) => '/profile/get-user-likes/$userId';

//   static String likeUser(String userId) => '/profile/like-unlike-user/$userId';
//   static String addUser(String userId) => '/profile/friends/add/$userId';

// // Event Endpoints
//   static const getEvents = '/events';
//   static const myEvent = '/events/my-events';
//   static String deleteEvent(String eventId) => '/events/event/$eventId';
//   static String createTicket(String eventId) =>
//       '/events/event/$eventId/tickets';
//   static String getEventById(String eventId) => '/events/event/$eventId';

// // Favourite Endpoints
//   static const getFavourite = '/profile/favourites';
//   static const deleteFavourite = '/profile/favourites/';

//   // Chat Endpoints
//   static String getGroupMessages(String roomId) =>
//       '/chat/room/$roomId/messages';

//   // Chat Endpoints
//   static String deleteFavEvent(String eventID) =>
//       '/profile/favourites/$eventID';

//   static String searchUser(String query) => "/chat/users?search=$query";

//   static const sendMessage = '/chat/send-message';
//   static const sendPrivateMassage = '/chat/send-first-private-message';
//   static const getAllRooms = '/chat/rooms';

//   static String getDeleteRoom(String roomId) => "/chat/rooms/$roomId";

//   // Subscriptions Endpoints
//   static String getSubscriptionPlans = '/subscriptions/plans';
//   static String subscriptions = '/subscriptions/subscription?status=active';
//   static String paymentMethods = '/subscriptions/payment-methods';
//   static String cancleSubscriptions = '/subscriptions/cancel-refund';

//   // Stripe Endpoints
//   static String getPriceObject(String priceID) =>
//       'https://api.stripe.com/v1/prices/$priceID';

//   //Get Event Ticket Endpoint

//   static String getEventTicket(String eventId) =>
//       '/events/event/$eventId/tickets';

//   // Ticket Purchase Endpoint 
//   static String purchaseTicket = '/events/purchase-tickets';
//   static const getTickets = '/events/purchase-tickets';
//   static String addTicket(String eventId) => '/events/event/$eventId/tickets';

//   //Dating Profile Endpoint
//   static String datingProfile = '/profile/dating-profile';
//   static String datingProfiles = '/profile/dating-profiles';
//   static String likeProfile(String userId) =>
//       '/profile/like-unlike-user/$userId';

//   //Wallet Endpoint
//   static String walletBalance = '/wallet/balance';
//   static String cocunutPrice = '/wallet/coconuts/prices';
//   static String purchaseCoconut = '/wallet/coconuts/purchase';
//   static String transferCoconut = '/wallet/coconuts/transfer';
//   static String transactionHistory = '/wallet/transaction-history';
// }
