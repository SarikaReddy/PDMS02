package tests;

import static org.testng.Assert.assertEquals;

import org.testng.annotations.Test;

import bean.Package;
import dao.PackageDAO;
import iiitb.com.PDMS.SendMail;

public class SampleTest {
	
	
	@Test
	public void testMail() throws Exception{
		
		Package pkg = null;
		assertEquals("Mail sent successfully!!!", SendMail.sendOne("Teegala.Sarika@iiitb.org",pkg));
	}
	
	/*
	 * @Test public void testDelete() throws Exception{
	 * assertEquals("Could not delete!!", PackageDAO.deletePkg(1, "7894")); }
	 * 
	 * @Test public void testAdd() throws Exception{
	 * assertEquals("Could not add the package! Please try again!!!",
	 * PackageDAO.addPackage(null, 1)); }
	 * 
	 * @Test public void testreceived() throws Exception{
	 * assertEquals("Try again!!", PackageDAO.setReceived(null, null, null, 0)); }
	 */
}
