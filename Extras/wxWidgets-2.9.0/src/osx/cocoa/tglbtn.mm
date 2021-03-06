/////////////////////////////////////////////////////////////////////////////
// Name:        src/osx/cocoa/tglbtn.mm
// Purpose:     Definition of the wxToggleButton class, which implements a
//              toggle button under wxMac.
// Author:      Stefan Csomor
// Modified by:
// Created:     08.02.01
// RCS-ID:      $Id: tglbtn.cpp 54129 2008-06-11 19:30:52Z SC $
// Copyright:   (c) Stefan Csomor
// License:     wxWindows license
/////////////////////////////////////////////////////////////////////////////

// ============================================================================
// declatations
// ============================================================================

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/wxprec.h"

#if wxUSE_TOGGLEBTN

#include "wx/tglbtn.h"
#include "wx/osx/private.h"

wxWidgetImplType* wxWidgetImpl::CreateToggleButton( wxWindowMac* wxpeer, 
                                    wxWindowMac* WXUNUSED(parent), 
                                    wxWindowID WXUNUSED(id), 
                                    const wxString& WXUNUSED(label),
                                    const wxPoint& pos, 
                                    const wxSize& size,
                                    long WXUNUSED(style), 
                                    long WXUNUSED(extraStyle))
{
    NSRect r = wxOSXGetFrameForControl( wxpeer, pos , size ) ;
    wxNSButton* v = [[wxNSButton alloc] initWithFrame:r];
    
    [v setBezelStyle:NSSmallSquareBezelStyle];    
    [v setButtonType:NSOnOffButton];
    wxWidgetCocoaImpl* c = new wxWidgetCocoaImpl( wxpeer, v );
    return c;
}

wxWidgetImplType* wxWidgetImpl::CreateBitmapToggleButton( wxWindowMac* wxpeer, 
                                    wxWindowMac* WXUNUSED(parent), 
                                    wxWindowID WXUNUSED(id), 
                                    const wxBitmap& WXUNUSED(label),
                                    const wxPoint& pos, 
                                    const wxSize& size,
                                    long WXUNUSED(style), 
                                    long WXUNUSED(extraStyle))
{    
    NSRect r = wxOSXGetFrameForControl( wxpeer, pos , size ) ;
    wxNSButton* v = [[wxNSButton alloc] initWithFrame:r];
    
    [v setBezelStyle:NSRegularSquareBezelStyle];
    [v setButtonType:NSOnOffButton];
    wxWidgetCocoaImpl* c = new wxWidgetCocoaImpl( wxpeer, v );
    return c;
}

#endif // wxUSE_TOGGLEBTN

