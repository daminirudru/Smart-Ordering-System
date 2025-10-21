# 🚀 How to Run Smart Ordering System

## ✅ Both servers are now running!

### 🌐 Access Your Application:

1. **Frontend (React App):** 
   - URL: `http://localhost:3000`
   - This is your main application interface

2. **Backend (API Server):**
   - URL: `http://localhost:5000`
   - API Health Check: `http://localhost:5000/api/health`

---

## 🔧 Manual Startup (if needed):

### Option 1: Using Root Script (Recommended)
```bash
npm run dev
```

### Option 2: Start Servers Separately

**Terminal 1 - Backend:**
```bash
cd backend
npm start
```

**Terminal 2 - Frontend:**
```bash
cd frontend
npm start
```

---

## 🎯 What to Expect:

### Frontend Features:
- ✅ Home page with project information
- ✅ User registration and login
- ✅ Menu browsing with categories
- ✅ Shopping cart functionality
- ✅ Checkout with payment options
- ✅ Order tracking with unique IDs
- ✅ Admin dashboard for management

### Backend Features:
- ✅ JWT Authentication
- ✅ MongoDB database connection
- ✅ RESTful API endpoints
- ✅ Razorpay payment integration (demo mode)
- ✅ Order management system
- ✅ Real-time order tracking

---

## 🧪 Test Credentials:

### Regular User:
- Email: `user@example.com`
- Password: `password123`

### Admin User:
- Email: `admin@smartordering.com`
- Password: `admin123456`

---

## 📱 Features to Test:

1. **Registration/Login** - Create account and login
2. **Browse Menu** - View categorized menu items
3. **Add to Cart** - Add items with quantity
4. **Checkout** - Three payment options:
   - Razorpay Payment
   - Pay at Counter ⭐ (New Feature)
   - Demo Payment
5. **Order Tracking** - View orders with unique IDs
6. **Admin Dashboard** - Manage orders and menu (admin only)

---

## 🛠️ If Pages Don't Load:

1. **Check both PowerShell windows are open and running**
2. **Verify URLs:**
   - Frontend: http://localhost:3000
   - Backend: http://localhost:5000/api/health
3. **Restart if needed:**
   ```bash
   # Stop all processes
   Get-Process | Where-Object {$_.ProcessName -like "*node*"} | Stop-Process -Force
   
   # Restart
   npm run dev
   ```

---

## ✨ New Enhancements Added:

- 🛡️ **Error Boundary** - Graceful error handling
- ⚡ **Loading Spinner** - Better loading states  
- 💳 **Pay at Counter** - No online payment required
- 🎨 **Enhanced UI** - Better responsive design
- 🔧 **Fixed Razorpay** - Works without API keys

Your Smart Ordering System is ready to use! 🎉