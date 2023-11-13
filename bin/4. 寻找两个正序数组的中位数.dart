class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    var nums3 = List<int>.from([...nums1, ...nums2]);
    nums3.sort();
    if (nums3.length.isEven) {
      return (nums3[nums3.length ~/ 2 - 1] + nums3[nums3.length ~/ 2]) / 2;
    } else {
      return nums3[(nums3.length - 1) ~/ 2].toDouble();
    }
  }
}
