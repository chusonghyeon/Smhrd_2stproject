
package kr.smhrd.model;


import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;

public class AllDAO {
   private Connection conn; // 접속정보? Connection
   private PreparedStatement ps;
   private ResultSet rs;

   private void getConnect() {
      String URL = "jdbc:oracle:thin:@172.30.1.27:1521:XE"; // 프로토콜과 서브프로포콜
      String user = "hr";
      String password = "hr";
      try { // DriverManager와 연결
         Class.forName("oracle.jdbc.driver.OracleDriver");
         conn = DriverManager.getConnection(URL, user, password);
      } catch (Exception e) { // 예외 다용성 (여러개를 잡을 수 있음)
         e.printStackTrace();
      }
   }

//   sectionlist DAO (각구역 관리자 DAO)
   
  public ArrayList<SlBoardVO> SlBoardSectionList(SlManagerVO vo1) {
      ArrayList<SlBoardVO> list = new ArrayList<SlBoardVO>();
      String SQL = "";

      char location = vo1.getSlmanager_id().charAt(0);

      String position = "";
      position += location;

      String temp = vo1.getSlmanager_id();
      if (temp.length() == 5) {
         getConnect();
         SQL = "select * from slboard";
         try {
            getConnect();
            ps = conn.prepareStatement(SQL);

            rs = ps.executeQuery();
            while (rs.next()) {
               int slboard_n = rs.getInt("slboard_n");
               String sllamp_name = rs.getString("sllamp_name");
               String sllamp_location = rs.getString("sllamp_location");
               String slboard_status = rs.getString("slboard_status");
               String slboard_decibel = rs.getString("slboard_decibel");
               String slboard_rec = rs.getString("slboard_rec");
               String slboard_date = rs.getString("slboard_date");

               SlBoardVO vo = new SlBoardVO(slboard_n, sllamp_name, sllamp_location, slboard_status,
                     slboard_decibel, slboard_rec, slboard_date);
               list.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            dbClose();
         }
      } else {
         getConnect();
         SQL = "select * from slboard where SLLAMP_LOCATION like ?||'%'";
         try {
            getConnect();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, position);
            rs = ps.executeQuery();
            while (rs.next()) {
               int slboard_n = rs.getInt("slboard_n");
               String sllamp_name = rs.getString("sllamp_name");
               String sllamp_location = rs.getString("sllamp_location");
               String slboard_status = rs.getString("slboard_status");
               String slboard_decibel = rs.getString("slboard_decibel");
               String slboard_rec = rs.getString("slboard_rec");
               String slboard_date = rs.getString("slboard_date");

               SlBoardVO vo = new SlBoardVO(slboard_n, sllamp_name, sllamp_location, slboard_status,
                     slboard_decibel, slboard_rec, slboard_date);
               list.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            dbClose();
         }
      }

      return list;
   }
 
   public ArrayList<SlLampVO> SlLampSectionList(SlManagerVO vo1) {
      ArrayList<SlLampVO> list = new ArrayList<SlLampVO>(); 
      String SQL = "";
      char location = vo1.getSlmanager_id().charAt(0);

      String position = "";
      position += location;

      String temp = vo1.getSlmanager_id();

      if (temp.length() == 5) {
         getConnect();
         SQL = "select * from SLLAMP";
         try {

            ps = conn.prepareStatement(SQL);

            rs = ps.executeQuery();
            while (rs.next()) {
               int sllamp_n = rs.getInt("sllamp_n");
               String sllamp_name = rs.getString("sllamp_name");
               String sllamp_location = rs.getString("sllamp_location");
               String sllamp_status = rs.getString("sllamp_status");
               String sllamp_battery = rs.getString("sllamp_battery");
               String sllamp_broken = rs.getString("sllamp_broken");

//               묶고(vo) -> 담고(ArrayList)
               SlLampVO vo = new SlLampVO(sllamp_n, sllamp_name, sllamp_location, sllamp_status, sllamp_battery,
                     sllamp_broken);
               list.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            dbClose();
         }

        

      } else {
         SQL = "select * from SLLAMP where SLLAMP_LOCATION like ?||'%'";
         try {
            getConnect();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, position);
            rs = ps.executeQuery();
            while (rs.next()) {
               int sllamp_n = rs.getInt("sllamp_n");
               String sllamp_name = rs.getString("sllamp_name");
               String sllamp_location = rs.getString("sllamp_location");
               String sllamp_status = rs.getString("sllamp_status");
               String sllamp_battery = rs.getString("sllamp_battery");
               String sllamp_broken = rs.getString("sllamp_broken");

               SlLampVO vo = new SlLampVO(sllamp_n, sllamp_name, sllamp_location, sllamp_status, sllamp_battery,
                     sllamp_broken);
               list.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            dbClose();
         }
      }

      return list;
   }

   public ArrayList<SlCamVO> SlCamSectionList(SlManagerVO vo1) {
      ArrayList<SlCamVO> list = new ArrayList<SlCamVO>();
      String SQL = "";
      char location = vo1.getSlmanager_id().charAt(0);

      String position = "";
      position += location;

      String temp = vo1.getSlmanager_id();
      if (temp.length() == 5) {
         try {
            SQL = "select * from SLCAM";
            getConnect();
            ps = conn.prepareStatement(SQL);

            rs = ps.executeQuery();
            while (rs.next()) {
               int slcam_n = rs.getInt("slcam_n");
               String slcam_name = rs.getString("slcam_name");
               String slcam_location = rs.getString("slcam_location");
               String slcam_status = rs.getString("slcam_status");
               SlCamVO vo = new SlCamVO(slcam_n, slcam_name, slcam_location, slcam_status);
               list.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            dbClose();
         }
      } else {
         try {
            SQL = "select * from SLCAM where SLCAM_LOCATION like ?||'%'";
            getConnect();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, position);
            rs = ps.executeQuery();
            while (rs.next()) {
               int slcam_n = rs.getInt("slcam_n");
               String slcam_name = rs.getString("slcam_name");
               String slcam_location = rs.getString("slcam_location");
               String slcam_status = rs.getString("slcam_status");
               SlCamVO vo = new SlCamVO(slcam_n, slcam_name, slcam_location, slcam_status);
               list.add(vo);
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            dbClose();
         }
      }

      return list;
   }

//   slmanager DAO (관리자)
   public int SlManagerInsert(SlManagerVO vo) {
      getConnect();
      String SQL = "insert into SLMANAGER values(slmanager_seq.nextval, ?, ?, ?, ?, ?, ?)";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSlmanager_id());
         ps.setString(2, vo.getSlmanager_pw());
         ps.setString(3, vo.getSlmanager_position());
         ps.setString(4, vo.getSlmanager_name());
         ps.setString(5, vo.getSlmanager_tel());
         ps.setString(6, vo.getSlmanager_mail());

         cnt = ps.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public ArrayList<SlManagerVO> SlManagerAllList() {
      getConnect();
      String SQL = "select * from SLMANAGER order by slmanager_n";
      ArrayList<SlManagerVO> list = new ArrayList<SlManagerVO>(); 
      try {
         ps = conn.prepareStatement(SQL);
         rs = ps.executeQuery();
         while (rs.next()) {
            int slmanager_n = rs.getInt("slmanager_n");
            String slmanager_id = rs.getString("slmanager_id");
            String slmanager_pw = rs.getString("slmanager_pw");
            String slmanager_position = rs.getString("slmanager_position");
            String slmanager_name = rs.getString("slmanager_name");
            String slmanager_tel = rs.getString("slmanager_tel");
            String slmanager_mail = rs.getString("slmanager_mail");

            SlManagerVO vo = new SlManagerVO(slmanager_n, slmanager_id, slmanager_pw, slmanager_position,
                  slmanager_name, slmanager_tel, slmanager_mail);
            list.add(vo);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return list;
   }

   public int SlManagerDelete(int num) {
      getConnect();
      String SQL = "delete from SLMANAGER where slmanager_n =?";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return cnt;
   }

   public SlManagerVO SlManagerContent(int num) {
      getConnect();
      String SQL = "select * from SLMANAGER where slmanager_n =?";
      SlManagerVO vo = null;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         rs = ps.executeQuery();
         if (rs.next()) {
            num = rs.getInt("slmanager_n");
            String slmanager_id = rs.getString("slmanager_id");
            String slmanager_pw = rs.getString("slmanager_pw");
            String slmanager_position = rs.getString("slmanager_position");
            String slmanager_name = rs.getString("slmanager_name");
            String slmanager_tel = rs.getString("slmanager_tel");
            String slmanager_mail = rs.getString("slmanager_mail");
            vo = new SlManagerVO(num, slmanager_id, slmanager_pw, slmanager_position, slmanager_name, slmanager_tel,
                  slmanager_mail);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return vo;
   }

//   LOGIN DAO
   public int SlManagerlogin(String slmanager_id, String slmanager_pw) {
      getConnect();
      String SQL = "SELECT SLMANAGER_PW FROM SLMANAGER WHERE SLMANAGER_ID = ?";
      try {
         ps = conn.prepareStatement(SQL);
         ps.setString(1, slmanager_id);
         rs = ps.executeQuery();
         if (rs.next()) {
            if (rs.getString(1).equals(slmanager_pw)) {
               return 1;// 로그인
            } else {
               return 0;// 아이디는 맞지만, 비밀번호 틀림
            }
         }
         return -1;// 아이디가 없음
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return -2; // 데이터베이스 오류
   }

   public int SlManagerUpdate(SlManagerVO vo) {
      getConnect();
      int cnt = 0;
      try {
         String SQL = "update SLMANAGER set slmanager_position=?, slmanager_tel=?, slmanager_mail=? where slmanager_n=?";
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSlmanager_position());
         ps.setString(2, vo.getSlmanager_tel());
         ps.setString(3, vo.getSlmanager_mail());
         ps.setInt(4, vo.getSlmanager_n());
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return cnt;
   }

   // slboard DAO

   public ArrayList<SlBoardVO> SlBoardAllList() {
      getConnect();
      String SQL = "select * from SLBOARD order by slboard_n";
      ArrayList<SlBoardVO> list = new ArrayList<SlBoardVO>();
      try {
         ps = conn.prepareStatement(SQL);
         rs = ps.executeQuery();
         while (rs.next()) {
            int slboard_n = rs.getInt("slboard_n");
            String sllamp_name = rs.getString("sllamp_name");
            String sllamp_location = rs.getString("sllamp_location");
            String slboard_status = rs.getString("slboard_status");
            String slboard_decibel = rs.getString("slboard_decibel");
            String slboard_rec = rs.getString("slboard_rec");
            String slboard_date = rs.getString("slboard_date");

            SlBoardVO vo = new SlBoardVO(slboard_n, sllamp_name, sllamp_location, slboard_status, slboard_decibel,
                  slboard_rec, slboard_date);
            list.add(vo);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return list;
   }

   public int SlBoardInsert(SlBoardVO vo) {
      getConnect();

      Calendar cd = Calendar.getInstance();
      int hour = cd.get(cd.HOUR_OF_DAY);
      int min = cd.get(cd.MINUTE);
      int sec = cd.get(cd.SECOND);

      int year = cd.get(cd.YEAR);
      int month = cd.get(cd.MONTH) + 1;
      int date = cd.get(cd.DATE);

      String Sldate = year + "/" + month + "/" + date + " " + hour + ":" + min + ":" + sec;

      String SQL = "insert into SLBOARD values(SLBOARD_seq.nextval, ?, ?, ?, ?, '녹화', " + "'" + Sldate + "')";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSllamp_name());
         ps.setString(2, vo.getSllamp_location());
         ps.setString(3, vo.getSlboard_status());
         ps.setString(4, vo.getSlboard_decibel());

         cnt = ps.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public int SlBoardDelete(int num) {
      getConnect();
      String SQL = "delete from SLBOARD where SLBOARD_N = ?";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public SlBoardVO SlBoardContent(int num) {
      getConnect();
      String SQL = "select * from SLBOARD where SLBOARD_N =? order by SLBOARD_n";
      SlBoardVO vo = null;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         rs = ps.executeQuery();
         if (rs.next()) {
            num = rs.getInt("SLBOARD_n");
            String sllamp_name = rs.getString("sllamp_name");
            String sllamp_location = rs.getString("sllamp_location");
            String slboard_status = rs.getString("slboard_status");
            String slboard_decibel = rs.getString("slboard_decibel");
            String slboard_rec = rs.getString("slboard_rec");
            String slboard_date = rs.getString("slboard_date");

            vo = new SlBoardVO(num, sllamp_name, sllamp_location, slboard_status, slboard_decibel, slboard_rec,
                  slboard_date);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return vo;
   }

   public int SlBoardUpdate(SlBoardVO vo) {
      getConnect();
      int cnt = 0;
      try {
         String SQL = "update SLBOARD set SLLamp_name=?, SLLamp_location=?, SLBOARD_status=?, SLBOARD_decibel=?, SLBOARD_rec=?, SLBOARD_date=? where SLBOARD_n=?";
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSllamp_name());
         ps.setString(2, vo.getSllamp_location());
         ps.setString(3, vo.getSlboard_status());
         ps.setString(4, vo.getSlboard_decibel());
         ps.setString(5, vo.getSlboard_rec());
         ps.setString(6, vo.getSlboard_date());
         ps.setInt(7, vo.getSlboard_n());
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return cnt;
   }

   // sllamp DAO (가로등 DAO)
   
   public int SlLampInsert(SlLampVO vo) {
      getConnect();
      String SQL = "insert into SLLAMP values(SLLAMP_seq.nextval, ?, ?, ?, ?, ?)";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSllamp_name());
         ps.setString(2, vo.getSllamp_location());
         ps.setString(3, vo.getSllamp_status());
         ps.setString(4, vo.getSllamp_battery());
         ps.setString(5, vo.getSllamp_broken());

         cnt = ps.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public int SlLampDelete(int num) {
      getConnect();
      String SQL = "delete from SLLAMP where SLLAMP_n = ?";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public SlLampVO SlLampContent(int num) {
      getConnect();
      String SQL = "select * from SLLAMP where SLLAMP_N =? order by SLLAMP_n";
      SlLampVO vo = null;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         rs = ps.executeQuery();
         if (rs.next()) {
            num = rs.getInt("SLLAMP_n");
            String sllamp_name = rs.getString("SLLAMP_name");
            String sllamp_location = rs.getString("SLLAMP_location");
            String sllamp_status = rs.getString("SLLAMP_status");
            String sllamp_battery = rs.getString("SLLAMP_battery");
            String sllamp_broken = rs.getString("SLLAMP_broken");
            vo = new SlLampVO(num, sllamp_name, sllamp_location, sllamp_status, sllamp_battery, sllamp_broken);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return vo;
   }

   public int SlLampUpdate(SlLampVO vo) {
      getConnect();
      int cnt = 0;
      try {
         String SQL = "update SLLAMP set SLLAMP_name=?, SLLAMP_location=?, SLLAMP_status=?, SLLAMP_battery=?, SLLAMP_broken=? where SLLAMP_n=?";
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSllamp_name());
         ps.setString(2, vo.getSllamp_location());
         ps.setString(3, vo.getSllamp_status());
         ps.setString(4, vo.getSllamp_battery());
         ps.setString(5, vo.getSllamp_broken());
         ps.setInt(6, vo.getSllamp_n());
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return cnt;
   }

//   slcam DAO (카메라 DAO)


   public int SlCamInsert(SlCamVO vo) {
      getConnect();
      String SQL = "insert into SLCAM values(SLCAM_seq.nextval, ?, ?, ?)";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSlcam_name());
         ps.setString(2, vo.getSlcam_location());
         ps.setString(3, vo.getSlcam_status());

         cnt = ps.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public int SlCamDelete(int num) {
      getConnect();
      String SQL = "delete from SLCAM where SLCAM_n = ?";
      int cnt = 0;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public SlCamVO SlCamContent(int num) {
      getConnect();
      String SQL = "select * from SLCAM where SLCAM_N =? order by SLCAM_n";
      SlCamVO vo = null;
      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, num);
         rs = ps.executeQuery();
         if (rs.next()) {
            num = rs.getInt("SLCAM_n");
            String slcam_name = rs.getString("SLCAM_name");
            String slcam_location = rs.getString("SLCAM_location");
            String slcam_status = rs.getString("SLCAM_status");
            vo = new SlCamVO(num, slcam_name, slcam_location, slcam_status);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return vo;
   }

   public int SlCamUpdate(SlCamVO vo) {
      getConnect();
      int cnt = 0;
      try {
         String SQL = "update SLCAM set SLCAM_name=?, SLCAM_location=?, SLCAM_status=? where SLCAM_n=?";
         ps = conn.prepareStatement(SQL);
         ps.setString(1, vo.getSlcam_name());
         ps.setString(2, vo.getSlcam_location());
         ps.setString(3, vo.getSlcam_status());
         ps.setInt(4, vo.getSlcam_n());
         cnt = ps.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }

      return cnt;
   }

   public ArrayList<SlLampVO> lampStatus() {
      getConnect();
      String SQL = "select SLLAMP_NAME,SLLAMP_STATUS from SLLAMP  order by sllamp_name";
      ArrayList<SlLampVO> list = new ArrayList<SlLampVO>();
      try {
         ps = conn.prepareStatement(SQL);
         rs = ps.executeQuery();
         while (rs.next()) {
            String sllamp_name = rs.getString("SLlamp_name");
            String sllamp_status = rs.getString("SLlamp_status");
            SlLampVO vo = new SlLampVO(sllamp_name, sllamp_status);
            list.add(vo);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return list;
   }

   private void dbClose() {
      try {
         if (rs != null)
            rs.close();
         if (ps != null)
            ps.close();
         if (conn != null)
            conn.close();
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

}
