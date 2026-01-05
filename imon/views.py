from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status


class WebsiteStatusView(APIView):
    def get(self, request):
        return Response(
            {
                "status": "ok",
                "site": "Imon Website",
                "message": "Backend is connected successfully",
            },
            status=status.HTTP_200_OK,
        )
