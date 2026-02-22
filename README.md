# Dashboard Application by Noppon
> Flutter SDK ≥ 3.10  
> Dart SDK ≥ 3.0  

## Features
- Splash Screen พร้อม Animation (Airplane Loading)
- รองรับ Pull-to-Refresh สำหรับอัปเดตข้อมูลหน้า Dashboard (animation เล็กน้อย)
- Dashboard สำหรับ Duty / Roster / Upcoming Duties
- Design System แยก TextStyle, Icon และ Image อย่างชัดเจน
- โครงสร้างพร้อมรองรับ State Management ด้วย GetX

---

## Core Technology
### Flutter (Material 3)
- ใช้ `MaterialApp` + `ThemeData` เพื่อควบคุมธีมทั้งแอปจากศูนย์กลาง
- รองรับการ scale UI และปรับ design ได้ง่ายในอนาคต
- โครงสร้างเหมาะสำหรับ production application

---

## State Management
### GetX
เลือกใช้ **GetX** เนื่องจาก:
- Lightweight และมี boilerplate น้อย
- เหมาะกับ dashboard ที่มีหลาย section
- รองรับ reactive UI (`Obx`) และ navigation ในตัว
- อ่านโค้ดง่าย เหมาะกับทีมขนาดเล็กถึงกลาง

> โปรเจกต์นี้เตรียมโครงสร้าง GetX ไว้ให้พร้อมใช้งาน  
> แต่ยังไม่ผูก business logic หนัก เพื่อโฟกัสที่ UI และ Architecture เป็นหลัก

---

## Design System
### แนวคิด
- แยก configuration ออกเป็น layer อย่างชัดเจน
- หลีกเลี่ยงการ hardcode `TextStyle` กระจัดกระจายทั่วโค้ด
- ใช้ semantic naming เพื่อสื่อความหมายของ UI

### ตัวอย่าง Semantic Style
- `sectionTitle`
- `cardTitle`
- `timelineCode`
- `footerStatus`

### ข้อดี
- ปรับ UI ทั้งแอปได้จากจุดเดียว
- ทำงานร่วมกับ Designer / QA ได้ง่าย
- รองรับการ scale แอปในระยะยาว

---

## ✈️ Splash Screen Animation Concept
### แนวคิดหลัก
**Simple, Meaningful, and On-brand**
- Splash Screen ไม่ควรรกหรือแย่งความสนใจผู้ใช้
- หลีกเลี่ยง animation ที่หนักหรือซับซ้อนเกินจำเป็น
- เลือกใช้ Airplane Rotation Animation เพื่อสื่อถึง domain ของแอป
- การเคลื่อนไหวแบบต่อเนื่อง (Linear rotation) ใช้ resource ต่ำ

---

## Implementation Details
- ใช้ `AnimationController` ร่วมกับ `SingleTickerProviderStateMixin`
- หมุน icon ด้วย `Transform.rotate`
- ใช้ `Curves.linear` เพื่อให้การหมุนสม่ำเสมอ
- แยก widget เป็น `AirplaneLoading` เพื่อให้สามารถ reuse ได้ในอนาคต

---

## เหตุผลที่ไม่ใช้ Lottie
- Splash Screen เป็นช่วงเวลาสั้น
- ต้องการควบคุม behavior ของ animation เอง
- ลด dependency ที่ไม่จำเป็น
- โค้ดอ่านง่าย ดูแลรักษาได้ง่ายกว่า

---

## ทำไม Bottom Navigation ไม่ใช้ Library
### แนวคิดหลัก
**Control > Flexibility > Dependency**
โปรเจกต์นี้ตั้งใจ ไม่ใช้ Bottom Navigation library แต่เลือก implement เองด้วย Flutter พื้นฐาน เนื่องจากเหตุผลดังนี้
- ใช้ custom icon font
- มี spacing / alignment เฉพาะ
- ต้องการ behavior ที่ไม่ตรงกับ default ของ lib ทั่วไป
- รองรับการปรับ animation / state ในอนาคต

Library สำเร็จรูปมัก lock design ปรับได้จำกัดต้อง workaround เยอะเมื่อ design ไม่ตรงเขียนเอง → design ตรง Figma 100%

## Author
**Noppon Sripetchpool**  
Flutter Developer