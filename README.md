# Smart Ordering System

## 📋 Project Overview

The **Smart Ordering System** is a full-stack web application developed using the **MERN stack** (MongoDB, Express.js, React.js, Node.js). It is designed to digitalize and simplify the food ordering process in restaurants, canteens, and university shops. The system allows customers to browse the menu, place orders online, make payments through a static Razorpay integration, and track their order status in real time.

The main goal of this project is to **reduce waiting time**, **avoid manual order confusion**, and **improve service efficiency** through digital automation.

---

## ✨ Key Features

### 🔐 **User Registration and Login with JWT Authentication**
- Secure user registration and login system
- JWT-based authentication for enhanced security
- Password encryption and secure data handling
- Role-based access control (Customer/Admin)

### 🍕 **Menu Display with Item Details, Images, and Prices**
- Interactive menu browsing with categorized items
- Detailed item descriptions with high-quality images
- Real-time pricing and availability status
- Search and filter functionality for easy navigation

### 🛒 **Add to Cart and Order Placement Module**
- Dynamic shopping cart with quantity management
- Real-time cart updates and total calculations
- Seamless order placement process
- Special instructions and customization options

### 🆔 **Auto-generation of Unique Order IDs for Each Order**
- Automated unique order ID creation for every transaction
- Order tracking using generated IDs
- Order history management and retrieval
- Systematic order organization for staff

### 📱 **Order Tracking System (Pending, Preparing, Completed)**
- Real-time order status updates for customers
- Live tracking from placement to completion
- Status progression: **Pending** → **Preparing** → **Completed**
- Estimated delivery time calculations

### 👨‍💼 **Admin Dashboard to Manage Menu, Orders, and Users**
- Comprehensive admin control panel
- Menu item creation, editing, and inventory management
- Real-time order management with status updates
- User management and customer information access
- Sales analytics and performance reporting

### 💳 **Static Razorpay Payment Integration for Secure Online Payments**
- Multiple payment options (UPI, Cards, Net Banking, Wallets)
- Secure payment processing with transaction verification
- "Pay at Counter" option for added flexibility
- Demo payment mode for testing purposes

### 📱 **Responsive UI Compatible with Both Mobile and Desktop Devices**
- Mobile-first responsive design approach
- Optimized user experience across all screen sizes
- Modern and intuitive user interface
- Cross-browser compatibility

## 🚀 Quick Start

### Prerequisites
- Node.js (v14 or higher)
- MongoDB (local or Atlas)
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd smart-ordering-system
   ```

2. **Install dependencies**
   ```bash
   # Install root dependencies
   npm install
   
   # Install backend dependencies
   npm run install-server
   
   # Install frontend dependencies
   npm run install-client
   ```

3. **Environment Setup**
   
   Create `.env` file in the `backend` directory:
   ```env
   PORT=5000
   MONGODB_URI=mongodb://localhost:27017/smart-ordering-system
   JWT_SECRET=your_super_secret_jwt_key_here_make_it_strong_123456789
   JWT_EXPIRE=7d
   
   # Razorpay Configuration (Static Keys for Demo)
   RAZORPAY_KEY_ID=rzp_test_1DP5mmOlF5G5ag
   RAZORPAY_KEY_SECRET=HOhfwREokWkGBwhR9AmNreBj
   
   # Admin Credentials
   ADMIN_EMAIL=admin@smartordering.com
   ADMIN_PASSWORD=admin123456
   ```

4. **Seed Database** (Optional)
   ```bash
   cd backend
   node seeder.js
   ```

5. **Start the Application**
   ```bash
   # From root directory
   npm run dev
   ```

   This will start:
   - Backend server on `http://localhost:5000`
   - Frontend development server on `http://localhost:3000`

## 📱 Application Structure

```
smart-ordering-system/
├── backend/
│   ├── config/
│   │   └── database.js
│   ├── controllers/
│   │   ├── authController.js
│   │   ├── menuController.js
│   │   └── orderController.js
│   ├── middleware/
│   │   └── auth.js
│   ├── models/
│   │   ├── User.js
│   │   ├── MenuItem.js
│   │   └── Order.js
│   ├── routes/
│   │   ├── auth.js
│   │   ├── menu.js
│   │   └── orders.js
│   ├── .env
│   ├── server.js
│   ├── seeder.js
│   └── package.json
├── frontend/
│   ├── public/
│   │   └── index.html
│   ├── src/
│   │   ├── components/
│   │   │   ├── common/
│   │   │   └── layout/
│   │   ├── contexts/
│   │   │   ├── AuthContext.js
│   │   │   └── CartContext.js
│   │   ├── pages/
│   │   │   ├── Home.js
│   │   │   ├── Menu.js
│   │   │   ├── Cart.js
│   │   │   ├── Checkout.js
│   │   │   ├── OrderTracking.js
│   │   │   ├── Profile.js
│   │   │   └── AdminDashboard.js
│   │   ├── App.js
│   │   ├── App.css
│   │   ├── index.js
│   │   └── index.css
│   └── package.json
├── package.json
└── README.md
```

## 🔐 Authentication & Authorization

### User Roles
- **Admin**: Full access to dashboard, menu management, and order management
- **User**: Access to menu browsing, cart, ordering, and profile management

### Security Features
- JWT token-based authentication
- Password hashing with bcrypt
- Protected routes and API endpoints
- Input validation and sanitization
- CORS configuration

## 💳 Payment Integration

The system integrates with Razorpay for secure payment processing:

- **Test Mode**: Uses static test keys for demonstration
- **Payment Methods**: UPI, Cards, Net Banking, Wallets
- **Order Verification**: Cryptographic signature verification
- **Payment Status**: Real-time payment status updates

### Razorpay Test Cards
For testing payments, you can use these test card numbers:
- **Card Number**: 4111 1111 1111 1111
- **Expiry**: Any future date
- **CVV**: Any 3-digit number

## 📊 Order Management System

### Order Statuses
1. **Pending** - Order placed, payment pending
2. **Confirmed** - Payment successful, order confirmed
3. **Preparing** - Kitchen preparing the order
4. **Ready** - Order ready for pickup/delivery
5. **Completed** - Order delivered/picked up
6. **Cancelled** - Order cancelled

### Order ID Generation
Each order receives a unique ID format: `ORD{timestamp}{random}`
Example: `ORD12345678901`

## 🎨 UI/UX Features

- **Responsive Design**: Works on desktop, tablet, and mobile
- **Modern Interface**: Clean and intuitive user interface
- **Real-time Updates**: Live order status updates
- **Toast Notifications**: User-friendly feedback messages
- **Loading States**: Smooth loading indicators
- **Error Handling**: Graceful error messages

## 📝 API Documentation

### Authentication Endpoints
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/me` - Get current user
- `PUT /api/auth/profile` - Update profile

### Menu Endpoints
- `GET /api/menu` - Get all menu items
- `GET /api/menu/:id` - Get single menu item
- `POST /api/menu` - Create menu item (Admin)
- `PUT /api/menu/:id` - Update menu item (Admin)
- `DELETE /api/menu/:id` - Delete menu item (Admin)

### Order Endpoints
- `POST /api/orders` - Create new order
- `POST /api/orders/verify-payment` - Verify payment
- `GET /api/orders/my-orders` - Get user orders
- `GET /api/orders/:id` - Get single order
- `PUT /api/orders/:id/cancel` - Cancel order

## 🚀 Deployment

### Backend Deployment
1. Set up MongoDB Atlas or use local MongoDB
2. Configure environment variables
3. Deploy to Heroku, AWS, or your preferred platform

### Frontend Deployment
1. Build the React app: `npm run build`
2. Deploy to Netlify, Vercel, or serve with Express

### Environment Variables for Production
Make sure to update these in production:
- Use strong JWT secrets
- Configure real Razorpay keys
- Set up proper CORS origins
- Use production MongoDB URI

## 🧪 Testing

### Manual Testing Steps
1. **Registration/Login**: Test user creation and authentication
2. **Menu Browsing**: Verify menu items display correctly
3. **Cart Operations**: Test add, remove, update cart items
4. **Order Placement**: Complete order flow with payment
5. **Order Tracking**: Verify real-time status updates
6. **Admin Functions**: Test menu and order management

### Test Credentials
- **Admin**: admin@smartordering.com / admin123456
- **User**: john@example.com / password123

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Commit changes: `git commit -m 'Add feature'`
4. Push to branch: `git push origin feature-name`
5. Submit a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Support

For support or questions:
- Create an issue on GitHub
- Contact: support@smartordering.com

## 📈 Roadmap

- [ ] Real-time notifications with WebSocket
- [ ] Multi-restaurant support
- [ ] Mobile app development
- [ ] Advanced analytics dashboard
- [ ] Inventory management
- [ ] Loyalty program integration

---

**Made with ❤️ for modern food ordering experiences**#   S m a r t - O r d e r i n g - S y s t e m  
 