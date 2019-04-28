package controller;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.media.multipart.FormDataParam;

import bean.Package;
import dao.PackageDAO;

@Path("Packages")
public class PackageController {
	
	@Path("/getAll/{id}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getAllPackages(@PathParam("id") int id){
		
		GenericEntity<List<Package>> pkglist;
		
		pkglist = new GenericEntity<List<Package>>(PackageDAO.getAllPackages(id)) {};
		
		return Response.ok(pkglist).build();
	}
	
	@Path("/addPkg/{id}")
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public Response addPackage(@FormParam("pkgid") String pkgid,
							   @FormParam("pkgpdr") String pkgpdr,
							   @FormParam("entry_time") String entry_time,
							   @PathParam("id") int id) {
		Package pkg = new Package();
		pkg.setPkg_id(pkgid);
		pkg.setProvider_name(pkgpdr);
		pkg.setPkg_entry_time(entry_time);
		String resp = PackageDAO.addPackage(pkg,id);
		return Response.status(201).entity(resp).build();
	}
	
	@Path("/setReceived/{id}")
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public Response setReceived(@FormParam("recname") String recname,
			   					@FormParam("recroll") String recroll,
			   					@FormParam("collect_time") String collect_time,
			   					@FormParam("pkg_id") String pkg_id,
								@PathParam("id") int stud_id) {
		
		recname += "("+recroll+")";
		
		String resp = PackageDAO.setReceived(recname,collect_time,pkg_id,stud_id);
	
		return Response.status(201).entity(resp).build();

	}
	
	@Path("/sendMailOnAdd/{id}/{pkgid}")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public Response sendMailOnAdd(@PathParam("id") int id,
								  @PathParam("pkgid") String pkgid) {
		
		
		String resp = PackageDAO.sendMailOnAdd(id, pkgid);
		
		return Response.ok(resp).build();
	}
	
	@Path("/delPkg/{id}/{pkgid}")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public Response deletePkg(@PathParam("id") int id,
							  @PathParam("pkgid") String pkgid) {
		
		String resp = PackageDAO.deletePkg(id,pkgid);
		return Response.ok(resp).build();
	}
	
}
