# TestAutolayout
#Introduction

Auto Layout is a way that lets developers create user interface by defining relationships between elements. It provides a flexible and powerful system that describes how views and the UI controls relate to each other. By using Auto Layout, you can get an incredible control over layout, with a wide range of customization, and yield the perfect interface.

Auto Layout is a fantastic tool. It does things that earlier technologies could never dream of. From the edge case handling of creation of reciprocal relationships between views, Auto Layout introduces immense power.

#Menu

You will notice a menu at the bottom-right corner. The buttons in the menu are related to Auto Layout. You can use for alignment, sizing, spacing and resolving constraint issue.
Align – Create alignment constraints, such as aligning the left edges of two views.
Pin – Create spacing constraints, such as defining the width of a UI control.
Issues – Resolve layout issues.
Resizing – Specify how resizing affects constraints.
Stack – views provide an easy way to leverage the power of Auto Layout without introducing the complexity of constraints. A single stack view defines a row or column of user interface elements. The stack view arranges these elements based on its properties.



#Visual constraints

Once you setup a constraint in a view, the constraint line is displayed in either in orange or blue. The orange constraint lines indicates that there are insufficient constraints and you need to fix it.

The blue constraint line indicates that your view layout is being setup correctly and there is no ambiguity.


Sometimes after you create the constraint, the Interface Builder outline view shows a disclosure arrow. The red arrow also indicates that there are conflicts or ambiguities. Click the disclosure arrow, and you’ll see a list of the issues. The issues are displayed on a scene-by-scene basis. Typical issues include missing constraints, conflicting constraints and misplaced views.


In the Size Inspector, you can view a list of all the constraints that have been added. These constraints appear in a section called “Constraints”.

In addition to the size inspector view, the constraints also appear in the Interface Builder Outline under the corresponding view.


#Pin option

Top : Determine the distance of the view according the top margin  
Left : Determine the distance of the view according the left margin  
Right : Determine the distance of the view according the right margin
Bottom : Determine the distance of the view according the bottom margin

Constain to margins : Layout margins represent padding around the interior of a UIView that the layout system can use when laying out subviews - to ensure that a gap is left between the edge of a view and a subview. In this respect it is very much like the padding property associated with blocks in CSS

Width and Height : Set the width or height of the selected item (or items),

Equal Widths and Equal Heights : Set equal widths or heights for multiple selected items, select the appropriate checkbox. To specify the width or height of one object as a proportion of another, set an equal width or height, and then edit the Multiplier field in the Attributes inspector.

Aspect Ratio : Set an aspect ratio constraint for the selected item (or items), select the Aspect Ratio checkbox. If you select Aspect Ratio for a single item, the width of the item is used as the numerator for the ratio, and the height is used for the denominator. If you select Aspect Ratio for multiple items, Auto Layout chooses the width of one of the items for the numerator and the height of another item for the denominator. To change the initial aspect ratio, edit the Multiplier field of the Attributes inspector for the constraint. To change which item to use for the width or the height, use the First Item and Second Item pop-up menus in the Attributes inspector.

You can create a constraint related to another item that is not the nearest neighbor


#Align option

Leading edges :  align all views selected according left edge
Trailing edges : align all views selected according left edge
Top Edges : align all views selected according top edge
Bottom edges : align all views selected according bottom edge

Horizontal Centers, Vertical Centers, Baselines : You can center more than one views according the center in horizontal and vertical alignment.

Horizontally in Container and Vertically in Container : You can center a single item in a container in the horizontal or vertical direction (or both).

Resolve layout issues

Update Frames : For resolving misplaced items, this operation updates the frames of the selected items to match the values of the constraints in the Attributes inspector.
Update Constraints : For resolving misplaced items, this operation changes the values of the constraints in the Attributes inspector to match the frames displayed on the canvas.
Add Missing Constraints : For resolving ambiguities resulting from an insufficient number of constraints, this operation adds the necessary constraints to the selected items.
Reset to Suggested Constraints : This operation replaces the constraints for the selected items with new ones suggested by the Auto Layout system.
Clear Constraints : This operation removes all layout constraints for the selected items. You then define all new constraints.

#Constraint problems

Auto Layout issues occur when you create ambiguous or conflicting constraints.
You create ambiguous constraints by misplacing items, specifying an insufficient number of constraints, or leaving an item’s content size undefined. Ambiguous constraints result in multiple possible layouts for the items’ sizes and placements. Interface Builder indicates ambiguity by drawing constraint lines or frame borders in orange.
Item misplacement results from a mismatch between a frame’s location on the canvas and the frame’s runtime position, which is defined by its constraints in the Attributes inspector. For example, if you specify constraints for an item and then move the item on the canvas so that Interface Builder can no longer satisfy its constraints, you create an item misplacement. Interface Builder shows misplaced items by drawing constraint lines in orange. Numbers indicate the deltas between the current canvas positions and the constraint values specified in the Attributes inspector. Interface Builder draws dashed orange lines to indicate the runtime position of the misplaced item.

Missing constraints also cause ambiguity, as for example, when you constrain the vertical position of an item but don’t add constraints for the horizontal position. Interface Builder draws in orange the frame border that is missing a constraint. For the leading (or left) edge of the button below, for example, there is no horizontal space constraint, so the left side of the frame is drawn in orange.


