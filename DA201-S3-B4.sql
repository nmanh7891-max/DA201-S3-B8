erDiagram
    %% KHỐI HỘI VIÊN
    MEMBER {
        string Ma_HV PK "Mã Hội viên"
        string Ho_ten "Họ tên"
        string SDT "Số điện thoại"
        date Ngay_dang_ky "Ngày tham gia"
    }

    %% KHỐI HUẤN LUYỆN VIÊN
    TRAINER {
        string Ma_HLV PK "Mã Huấn luyện viên"
        string Ho_ten "Họ tên"
        string Chuyen_mon "Chuyên môn"
        string Dien_thoai "Điện thoại"
    }

    %% KHỐI GÓI TẬP
    PACKAGE {
        string Ma_goi PK "Mã gói tập"
        string Ten_goi "Tên gói"
        float Gia "Giá tiền"
        int Thoi_han "Thời hạn (ngày/tháng)"
        string Ma_HLV FK "HLV Phụ trách"
    }

    %% KHỐI ĐĂNG KÝ (TRUNG GIAN)
    REGISTRATION {
        string Ma_HV PK,FK "Mã Hội viên"
        string Ma_goi PK,FK "Mã gói tập"
        date Ngay_bat_dau "Ngày bắt đầu"
        date Ngay_ket_thuc "Ngày kết thúc"
        string Trang_thai "Trạng thái (Active/Expired)"
    }

    %% QUAN HỆ
    TRAINER ||--|{ PACKAGE : "Phụ trách / Quản lý"
    MEMBER ||--o{ REGISTRATION : "Thực hiện đăng ký"
    PACKAGE ||--o{ REGISTRATION : "Được đăng ký trong"